import 'package:flutterlearnplan/const/export.dart';

class HomeScreenday6 extends StatelessWidget {
  final String username;
  final String useremail;
  final String userpassoword;
  const HomeScreenday6({
    super.key,
    required this.username,
    required this.useremail,
    required this.userpassoword,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Data Passing: Home Screen"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Welcome, $username ".text.bold.size(20).make(),
            10.heightBox,
            "Email: $useremail".text.bold.size(20).make(),
            10.heightBox,
            "Password: $userpassoword".text.bold.size(20).make(),
            30.heightBox,
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: "Back".text.make(),
            ),
          ],
        ),
      ),
    );
  }
}
