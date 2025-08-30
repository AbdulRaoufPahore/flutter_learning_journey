import 'package:flutterlearnplan/const/export.dart';

class HomeScreenTodo extends StatefulWidget {
  const HomeScreenTodo({super.key});

  @override
  State<HomeScreenTodo> createState() => _HomeScreenTodoState();
}

class _HomeScreenTodoState extends State<HomeScreenTodo> {
  final dbHelper = DDBHelper();
  List<Todo> todos = [];

  @override
  void initState() {
    super.initState();
    fetchTodos();
  }

  fetchTodos() async {
    final data = await dbHelper.getTodos();
    setState(() {
      todos = data;
    });
  }

  deleteTask(int id) async {
    await dbHelper.delete(id);
    fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-Do App")),
      body: todos.isEmpty
          ? Center(child: Text("No tasks yet"))
          : ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return ListTile(
                  title: Text(todo.title!),
                  subtitle: Text(todo.description!),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => deleteTask(todo.id!),
                  ),
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => TaskForm(todo: todo)),
                    );
                    fetchTodos();
                  },
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => TaskForm()),
          );
          fetchTodos();
        },
      ),
    );
  }
}
