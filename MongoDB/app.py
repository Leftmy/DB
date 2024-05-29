from flask import Flask, request, jsonify, render_template, redirect, url_for
from pymongo import MongoClient

app = Flask(__name__)

# Connect to the MongoDB database
client = MongoClient('mongodb://localhost:27017')
db = client.newsletter_db  # 'blog_db' is the name of our database

# Define your collections, for example, 'notes'
notes = db.notes

@app.route('/')
def home():
    all_notes = list(notes.find({}, {'_id': 0}))
    return render_template('home.html', notes=all_notes)

@app.route('/create')
def create():
    return render_template('create_note.html')

# Create a note
@app.route('/note', methods=['POST'])
def create_note():
    title = request.form.get('title')
    content = request.form.get('content')
    if title and content:
        notes.insert_one({'title': title, 'content': content})
        return redirect(url_for('home'))
    else:
        return render_template('create_note.html', message='Title and content required')

# Read All notes
@app.route('/notes', methods=['GET'])
def get_notes():
    all_notes = list(notes.find({}, {'_id': 0, 'title': 1, 'content': 1}))
    return jsonify(all_notes)

# Update a note
@app.route('/note/<note_id>', methods=['PUT'])
def update_note(note_id):
    updated_data = request.json
    result = notes.update_one({'_id': note_id}, {'$set': updated_data})
    if result.modified_count > 0:
        return jsonify({'message': 'Note updated successfully'})
    else:
        return jsonify({'message': 'No changes made or note not found'})

# Delete a note
@app.route('/note/<note_id>', methods=['DELETE'])
def delete_note(note_id):
    result = notes.delete_one({'_id': note_id})
    if result.deleted_count > 0:
        return jsonify({'message': 'Note deleted successfully'})
    else:
        return jsonify({'message': 'Note not found'}), 404

if __name__ == '__main__':
    app.run(debug=True)