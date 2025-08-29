import 'package:flutterlearnplan/const/export.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Learning Flutter",

      theme: ThemeData.light(useMaterial3: false),
      // home: AppStructure(),
      // home: Task1Day3(),
      // home: ContainerDay4(),
      // home: ColumnDay4(),
      // home: RowDay4(),
      // home: LocalimageDay4(),
      // home: NetworkimageDay4(),
      // home: Task1Day4(),
      // home: ScaffoldDay5(),
      // home: AppbarDay5(),
      // home: HomescreenDay6(),
      // home: LoginscreenDay6(),
      // home: FormDay7(),

      // Week 2
      // home: ListviewDay8(),
      // home: GridviewDay8(),

      // Pojects
      // home: CounterScreen(),
      // home: ContantGalleryMiniApp(),
      home: ProfileScreen(),

      // home: Pr(),
    );
  }
}
