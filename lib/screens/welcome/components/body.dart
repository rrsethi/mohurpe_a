// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/login/login_screen.dart';

import '../../signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: kPrimaryColor));
    Size size = MediaQuery.of(context).size;

    dynamic sizeHeight = size.height - 40;
    // print(sizeHeight);
    if (sizeHeight < 800) {
      sizeHeight = 800.0;
    }
    // print("rr");
    // print(sizeHeight);
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          height: sizeHeight,
          width: double.infinity,
          // if (sizeHeight < 500) {
          //   height: 500,

          // } else {
          //   height: size.height: ,
          // },
          // if () {

          // } else {
          // }
          padding: EdgeInsets.fromLTRB(0, sizeHeight * 0.17, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                width: size.width * 0.6,
                // height: sizeHeight * 0.2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, sizeHeight * 0.01, 0, 0),
                child: Text(
                  "Welcome to MohurPe",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: sizeHeight * 0.03),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, sizeHeight * 0.13, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(size.width * 0.7, sizeHeight * 0.06),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(sizeHeight * 0.06)),
                  ),
                  // onPressed: () {},
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: sizeHeight * 0.025,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LogInScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, sizeHeight * 0.02, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(size.width * 0.7, sizeHeight * 0.06),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(sizeHeight * 0.06)),
                  ),
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      fontSize: sizeHeight * 0.025,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignUpScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(bottom: 40.0),
                child: Text(
                  "MohurPe Ltd.\nCopyright 2022-2024",
                  textAlign: TextAlign.center,
                ),
              ),
              // const Spacer(),
              // const Padding(
              //   padding: EdgeInsets.only(top: 0.1),
              //   child: Column(
              //     children: [
              //         alignment: Alignment.bottomLeft,
              //         child: Text(
              //           "MohurPe Ltd.\nCopyright 2022-2024",
              //           textAlign: TextAlign.center,
              //         ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
