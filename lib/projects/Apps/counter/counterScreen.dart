import 'package:flutterlearnplan/const/export.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterscreeSState();
}

class _CounterscreeSState extends State<CounterScreen> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Counter Projects"),
      body: Center(child: "Counter: $counter".text.bold.size(20).make()),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: decrement,
            backgroundColor: Colors.red,
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: increment,
            backgroundColor: Colors.green,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
