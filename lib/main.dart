// /*
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.green,
    //   statusBarBrightness: Brightness.dark,
    // ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MohurPe',

      theme: ThemeData(
        primaryColor: kPrimaryColor,
        // primarySwatch: kPrimaryColor,
        // primarySwatch: Colors.green,

        //     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        //   statusBarColor: Colors.white,
        //   statusBarBrightness: Brightness.dark,
        // ));
        // primarySwatch: Colors.white,
        backgroundColor: Colors.white,
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
// */