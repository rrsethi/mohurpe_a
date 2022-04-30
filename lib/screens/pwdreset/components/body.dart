import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/welcome/welcome_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(0, size.height * 0.15, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Positioned(
            top: size.height * 0.2,
            child: Image.asset(
              "assets/images/logo.png",
              width: size.width * 0.5,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text(
              "LogIn to MohurPe",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Text(
              "Will be coming soon!",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: size.width * 0.07),
            ),
          ),
          // const Text(
          //       'Name',
          //       textAlign: TextAlign.left,
          // ),
          // ]
          // Padding(
          //   padding: EdgeInsets.fromLTRB(
          //       size.width * 0.05, 60, size.width * 0.05, size.height * 0.01),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       labelText: 'User ID',
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(width: 3, color: Colors.grey),
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       focusedBorder: OutlineInputBorder(
          //         borderSide:
          //             const BorderSide(width: 3, color: kPrimaryColor),
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       hintText: "Enter your user ID",
          //     ),
          //   ),
          // ),

          // Padding(
          //   padding: EdgeInsets.fromLTRB(
          //       size.width * 0.05, 15, size.width * 0.05, size.height * 0.01),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       labelText: 'Password',
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(width: 3, color: Colors.grey),
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       focusedBorder: OutlineInputBorder(
          //         borderSide:
          //             const BorderSide(width: 3, color: kPrimaryColor),
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       hintText: "Enter your Password",
          //     ),
          //   ),
          // ),

          // Padding(
          //   padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       minimumSize: Size(size.width * 0.7, 55),
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(20)),
          //     ),
          //     onPressed: () {},
          //     child: const Text(
          //       'LOGIN',
          //       style: TextStyle(
          //         fontSize: 20.0,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),

          // Padding(
          //   padding: const EdgeInsets.only(top: 15),
          //   child: Center(
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           const TextSpan(
          //             text: 'Forgot password? ',
          //             style: TextStyle(color: Colors.black),
          //           ),
          //           TextSpan(
          //               text: 'Click here to reset',
          //               style: const TextStyle(color: kPrimaryColor),
          //               recognizer: TapGestureRecognizer()
          //                 ..onTap = () => Navigator.push(
          //                       context,
          //                       MaterialPageRoute(
          //                         builder: (context) {
          //                           return SignUpScreen();
          //                         },
          //                       ),
          //                     )),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          Padding(
            padding: EdgeInsets.only(top: size.height * 0.01),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Click ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.05),
                    ),
                    TextSpan(
                        text: 'here',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.06),
                        // style: TextStyle(),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const WelcomeScreen();
                                  },
                                ),
                              )),
                    TextSpan(
                      text: ' to return to Home Screen',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.05),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: Text(
              "MohurPe Ltd.\nCopyright 2022-2024",
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
