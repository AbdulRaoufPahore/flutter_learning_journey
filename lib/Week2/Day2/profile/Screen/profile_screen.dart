// ignore_for_file: deprecated_member_use

import 'package:flutterlearnplan/const/export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Profile Screen"),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(profileImg),
                ),
                12.heightBox,
                nameStr.text.bold.size(24).make(),
                5.heightBox,
                flutterDeve.text.bold.size(16).color(Colors.grey).make(),
                20.heightBox,
                InfoCard(
                  icon: Icons.phone,
                  title: "Phone",
                  subtitle: numberStr,
                ),
                InfoCard(
                  icon: Icons.email,
                  title: "E-mail",
                  subtitle: emailStr,
                ),
                InfoCard(
                  icon: Icons.location_on,
                  title: "Location",
                  subtitle: "Kamber Ali Khan, Sindh, Pakistan",
                ),
                InfoCard(
                  icon: Icons.code,
                  title: "Skills",
                  subtitle: "Dart, Flutter, Firebase",
                ),
                InfoCard(
                  icon: Icons.school,
                  title: "Education \nComputer Systems Engineering at ",
                  subtitle:
                      "Quaid-E-Awam University of Science & Technalogy of Nawabshah",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
