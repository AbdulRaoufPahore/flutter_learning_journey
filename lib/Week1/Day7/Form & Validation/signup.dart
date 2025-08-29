import 'package:flutterlearnplan/const/export.dart';

class SignupDay7 extends StatefulWidget {
  const SignupDay7({super.key});

  @override
  State<SignupDay7> createState() => _SignupDay7State();
}

class _SignupDay7State extends State<SignupDay7> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  bool isVisible1 = true;
  bool isVisible2 = true;

  void isVisiblity1() {
    setState(() {
      isVisible1 = !isVisible1;
    });
  }

  void isVisiblity2() {
    setState(() {
      isVisible2 = !isVisible2;
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
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      " SIGNUP ".text.bold.size(35).letterSpacing(3).make(),
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
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Icons.email),
                          labelText: "Email",
                          hint: "abd...@gmail.com".text.make(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          }
                          // Regular expression for basic email validation
                          String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                          RegExp regex = RegExp(pattern);
                          if (!regex.hasMatch(value)) {
                            return "Enter a valid email";
                          }
                          return null; // valid
                        },
                      ),
                      20.heightBox,
                      TextFormField(
                        controller: _passwordController,
                        obscureText: isVisible1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: isVisiblity1,
                            icon: isVisible1
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
                      TextFormField(
                        controller: _confirmController,
                        obscureText: isVisible2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: isVisiblity2,
                            icon: isVisible2
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                          ),
                          labelText: "Confirm Password",
                          hint: "* * * * * * * *".text.make(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your password";
                          }
                          if (value != _passwordController.text) {
                            return "Passwords do not match";
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
                                content: Text(
                                  "Please Fill the form correctly!",
                                ),
                              ),
                            );
                          }
                        },
                        child: "Signup".text.bold.size(20).make(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
