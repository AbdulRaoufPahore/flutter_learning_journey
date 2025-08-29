// ignore_for_file: must_be_immutable, file_names

import 'package:flutterlearnplan/const/export.dart';

class LoginscreenDay6 extends StatelessWidget {
  LoginscreenDay6({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Data Pasing: Login Screen"),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Enter your Name",
                hint: Text("Abdul Raouf ..."),
                prefixIcon: Icon(Icons.person_3),
              ),
            ),
            10.heightBox,
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Enter your emaiil",
                hint: Text("abdul@gmailcom"),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            10.heightBox,
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Enter your passoword",
                hint: Text("123*****"),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            20.heightBox,
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreenday6(
                      username: nameController.text,
                      useremail: emailController.text,
                      userpassoword: passwordController.text,
                    ),
                  ),
                );
              },
              child: "Loign".text.make(),
            ),
          ],
        ),
      ),
    );
  }
}
