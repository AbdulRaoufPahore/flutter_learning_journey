// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutterlearnplan/const/export.dart';

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  InfoCard({required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          elevation: 3,
          child: ListTile(
            leading: Icon(icon, size: 35),
            title: title.text.black.bold.make(),
            subtitle: subtitle.text.make(),
          ),
        ),
      ],
    );
  }
}
