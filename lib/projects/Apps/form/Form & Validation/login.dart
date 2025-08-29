import 'package:flutterlearnplan/const/export.dart';

class LoginDay7 extends StatefulWidget {
  const LoginDay7({super.key});

  @override
  State<LoginDay7> createState() => _LoginDay7State();
}

class _LoginDay7State extends State<LoginDay7> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool isVisible = true;

  void isVisiblity() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    " LOGIN ".text.bold.size(35).letterSpacing(3).make(),
                    50.heightBox,

                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.person_3),
                        labelText: "Name",
                        hint: "Abdul Raouf ...".text.make(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your name";
                        }
                        if (value.length < 3) {
                          return "Name too short";
                        }
                        return null;
                      },
                    ),
                    20.heightBox,
                    TextFormField(
                      controller: _passwordController,
                      obscureText: isVisible,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: isVisiblity,
                          icon: isVisible
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                        labelText: "Password",
                        hint: "* * * * * * * *".text.make(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your";
                        }
                        if (value.length < 8) {
                          return "Passwrod too short";
                        }
                        return null;
                      },
                    ),
                    20.heightBox,
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePageDay7(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Please Fill the form correctly!"),
                            ),
                          );
                        }
                      },
                      child: "Login".text.bold.size(20).make(),
                    ),
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          "Don't have an account ? ".text.size(16).make(),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupDay7(),
                                ),
                              );
                            },
                            child: "Signup".text.size(16).make(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
