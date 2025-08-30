import 'package:flutter/material.dart';
import 'db_helper.dart';
import 'todo_model.dart';

class TaskForm extends StatefulWidget {
  final Todo? todo;
  const TaskForm({super.key, this.todo});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final titleController = TextEditingController();
  final descController = TextEditingController();
  final dbHelper = DDBHelper();

  @override
  void initState() {
    super.initState();
    if (widget.todo != null) {
      titleController.text = widget.todo!.title!;
      descController.text = widget.todo!.description!;
    }
  }

  saveTask() async {
    if (widget.todo == null) {
      await dbHelper.insert(
        Todo(title: titleController.text, description: descController.text),
      );
    } else {
      await dbHelper.update(
        Todo(
          id: widget.todo!.id,
          title: titleController.text,
          description: descController.text,
        ),
      );
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.todo == null ? "Add Task" : "Edit Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Title"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: descController,
              decoration: InputDecoration(labelText: "Description"),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: saveTask, child: Text("Save")),
          ],
        ),
      ),
    );
  }
}
