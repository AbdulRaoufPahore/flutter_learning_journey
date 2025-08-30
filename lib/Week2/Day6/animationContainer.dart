import 'package:flutterlearnplan/const/export.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double boxSize = 100;
  var boxColor = Colors.amber;

  changeBox() {
    setState(() {
      boxSize = boxSize == 100 ? 200 : 100;
      boxColor = boxColor == Colors.blue ? Colors.amber : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Animated Container"),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 3),
          curve: Curves.bounceInOut,
          width: boxSize,
          height: boxSize,
          color: boxColor,
        ).box.shadowSm.roundedSM.make(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeBox,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
