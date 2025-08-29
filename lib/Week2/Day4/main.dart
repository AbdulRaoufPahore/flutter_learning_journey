import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // required for async in main

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? isLoggedIn = prefs.getBool('isLoggedIn');

  runApp(MyApp(isLoggedIn: isLoggedIn ?? false));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SharedPreferences Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: isLoggedIn ? const HomeScreenPrf() : const LoginScreen(),
    );
  }
}
