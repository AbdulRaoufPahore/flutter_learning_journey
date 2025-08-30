class Todo {
  final int? id;
  final String? title;
  final String? description;

  Todo({this.id, this.title, this.description});
  // convert Map back to ToDo
  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'description': description};
  }

  // convert Map Back to ToDo
  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'],
      title: map['title'],
      description: map['description'],
    );
  }
}
