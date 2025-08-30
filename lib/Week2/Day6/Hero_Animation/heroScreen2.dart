import 'package:flutterlearnplan/const/export.dart';

class HeroScreen2 extends StatefulWidget {
  const HeroScreen2({super.key});

  @override
  State<HeroScreen2> createState() => _HeroScreen2State();
}

class _HeroScreen2State extends State<HeroScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Hero Animation Screen 2"),
      body: Center(
        child: Hero(
          tag: 'hero-image',
          // transitionOnUserGestures: true,
          createRectTween: (begin, end) =>
              MaterialRectCenterArcTween(begin: begin, end: end),
          child: Image.asset(profileImg, width: 350),
        ),
      ),
    );
  }
}
