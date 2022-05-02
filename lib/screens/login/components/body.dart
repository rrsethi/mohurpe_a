import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/home/home_screen.dart';
import 'package:mohurpe_a/screens/pwdreset/coming_soon_screen.dart';
import 'package:mohurpe_a/screens/signup/signup_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController useridController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String correctUserid = "rrsethi";

  String correctPassword = "rrsethi";

  // Widget okButton = ElevatedButton(
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0, size.height * 0.1, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                width: size.width * 0.6,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, size.height * 0.01, 0, 0),
                child: Text(
                  "LogIn to MohurPe",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.03),
                ),
              ),
              // const Text(
              //       'Name',
              //       textAlign: TextAlign.left,
              // ),

              Padding(
                padding: EdgeInsets.fromLTRB(size.width * 0.05,
                    size.height * 0.1, size.width * 0.05, size.height * 0.01),
                child: TextField(
                  controller: useridController,
                  decoration: InputDecoration(
                    labelText: 'User ID',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Enter your user ID",
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(size.width * 0.05, 15,
                    size.width * 0.05, size.height * 0.01),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Enter your Password",
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, size.height * 0.05, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(size.width * 0.7, 55),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // print(useridController.text);
                    // print(passwordController.text);
                    if (useridController.text == correctUserid) {
                      if (passwordController.text == correctPassword) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomeScreen();
                            },
                          ),
                        );
                      } else {
                        AlertDialog alert = AlertDialog(
                            title: const Text("Incorrect Password!"),
                            actions: <Widget>[
                              ElevatedButton(
                                child: const Text('Back'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ]);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return alert;
                          },
                        );
                      }
                    } else {
                      AlertDialog alert = AlertDialog(
                          title: const Text("Incorrect User ID!"),
                          actions: <Widget>[
                            ElevatedButton(
                              child: const Text('Back'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ]);
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    }
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: size.height * 0.015),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Forgot password? ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                            text: 'Click here to reset',
                            style: const TextStyle(color: kPrimaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const ComingSoonScreen();
                                      },
                                    ),
                                  )),
                      ],
                    ),
                  ),
                ),
              ),
              // const Spacer(),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.015),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Don\'t have an account? ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                            text: 'SignUp',
                            style: const TextStyle(color: kPrimaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const SignUpScreen();
                                      },
                                    ),
                                  )),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: size.height * 0.12),
                child: const Text(
                  "MohurPe Ltd.\nCopyright 2022-2024",
                  textAlign: TextAlign.center,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(size.height * 0.025),
              //   child: const Text(
              //     "MohurPe Ltd.\nCopyright 2022-2024",
              //     textAlign: TextAlign.center,
              //   ),
              // ),
              // const Padding(
              //   padding: EdgeInsets.all(30),
              //   child: Text(
              //     "MohurPe Ltd.\nCopyright 2022-2024",
              //     textAlign: TextAlign.center,
              //   ),
              // )
            ],
          ),
        ));
  }
}
