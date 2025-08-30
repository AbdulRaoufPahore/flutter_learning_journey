import 'package:flutterlearnplan/const/export.dart';

class ProviderMain extends StatelessWidget {
  const ProviderMain({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBarWidget("Provider Counter"),
      body: Center(child: "Count: ${counter.count}".text.make()),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: counter.decrement,
            heroTag: "decrement",
            child: Icon(Icons.remove),
          ),
          10.heightBox,
          FloatingActionButton(
            onPressed: counter.increment,
            heroTag: "increment",
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
