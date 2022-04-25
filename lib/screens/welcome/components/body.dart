import 'package:flutter/material.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/login/login_screen.dart';

import '../../signup/signup_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    dynamic sizeHeight = size.height;
    return Container(
      // var szheight = "rrsethi",
      height: size.height,
      width: double.infinity,

      padding: EdgeInsets.fromLTRB(0, size.height * 0.17, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Positioned(
            top: size.height * 0.2,
            child: Image.asset(
              "assets/images/logo.png",
              width: size.width * 0.6,
              // height: size.height * 0.2,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, size.height * 0.01, 0, 0),
            child: Text(
              "Welcome to MohurPe",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: size.height * 0.03),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, sizeHeight * 0.13, 0, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(size.width * 0.7, size.height * 0.06),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(size.height * 0.06)),
              ),
              // onPressed: () {},
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: size.height * 0.025,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LogInScreen();
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, size.height * 0.02, 0, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(size.width * 0.7, size.height * 0.06),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(size.height * 0.06)),
              ),
              child: Text(
                'SIGNUP',
                style: TextStyle(
                  fontSize: size.height * 0.025,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.all(size.height * 0.025),
            child: const Text(
              "MohurPe Ltd.\nCopyright 2022-2024",
              textAlign: TextAlign.center,
            ),
          ),
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
    );
  }
}
