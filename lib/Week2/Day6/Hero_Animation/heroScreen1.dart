import 'package:flutterlearnplan/const/export.dart';

class HeroScreen1 extends StatefulWidget {
  const HeroScreen1({super.key});

  @override
  State<HeroScreen1> createState() => _HeroScreen1State();
}

class _HeroScreen1State extends State<HeroScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Hero Animation Screen 1"),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroScreen2()),
            );
          },
          child: Hero(
            tag: 'hero-image',
            child: Image.asset(profileImg, width: 100),
          ),
        ),
      ),
    );
  }
}
