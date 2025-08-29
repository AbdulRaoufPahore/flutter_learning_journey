import 'package:flutterlearnplan/const/export.dart';

class ContantGalleryMiniApp extends StatelessWidget {
  const ContantGalleryMiniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: "Mini App".text.bold.size(25).letterSpacing(2).make(),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.call), child: "Contact".text.make()),
              Tab(icon: Icon(Icons.grid_on), child: "Gallery".text.make()),
            ],
          ),
        ),
        body: TabBarView(children: [ContactTab(), GalleryTab()]),
      ),
    );
  }
}
