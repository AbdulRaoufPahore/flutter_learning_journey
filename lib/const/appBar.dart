// ignore_for_file: non_constant_identifier_names, file_names

import '../const/export.dart';

// Custom AppBar Widget
AppBar AppBarWidget(String title) {
  return AppBar(
    centerTitle: true,
    title: title.text.size(22).fontWeight(FontWeight.bold).make(),
  );
}
