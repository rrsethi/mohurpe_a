import 'package:flutter/material.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Color myColor = Colors.green;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'MohurPe',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        // primarySwatch: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color?>(kPrimaryColor),
          ),
        ),
      ),
      // color: Colors.red,
      home: const SafeArea(
        top: true,
        child: WelcomeScreen(),
      ),
    );
  }
}
