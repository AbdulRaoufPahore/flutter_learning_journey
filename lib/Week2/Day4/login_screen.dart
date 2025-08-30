// ignore_for_file: use_build_context_synchronously

import 'package:flutterlearnplan/Week2/Day4/home_screen.dart';
import 'package:flutterlearnplan/const/export.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();

  void login() async {
    if (nameController.text.isEmpty) return null;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    await prefs.setString('username', nameController.text);
    Navigator.pushReplacement(
      context as BuildContext,
      MaterialPageRoute(builder: (context) => HomeScreenPrf()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Login"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter you name",
              ),
            ),

            20.heightBox,
            ElevatedButton(onPressed: login, child: "Login".text.make()),
          ],
        ),
      ),
    );
  }
}
