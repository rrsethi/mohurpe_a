import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/home/home_screen.dart';
// import 'package:mohurpe_a/screens/login/components/body.dart';

class ReceiverPhoneScreen extends StatelessWidget {
  const ReceiverPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light
                .copyWith(statusBarColor: Theme.of(context).primaryColor),
            child: SafeArea(
                child: SizedBox(
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(0, size.height * 0.1, 0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Positioned(
                        top: size.height * 0.2,
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: size.width * 0.6,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(0, size.height * 0.01, 0, 0),
                        child: Text(
                          "MohurPe",
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
                      // const Text(
                      //   "Enter phone number:",
                      //   textAlign: TextAlign.left,
                      // ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            size.width * 0.05,
                            size.height * 0.1,
                            size.width * 0.05,
                            size.height * 0.01),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: kPrimaryColor),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "Enter receiver's phone number",
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(size.width * 0.05, 15,
                            size.width * 0.05, size.height * 0.01),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Amount',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: kPrimaryColor),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "Enter Amount",
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(0, size.height * 0.05, 0, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(size.width * 0.7, 55),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          child: const Text(
                            'PAY',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomeScreen();
                                },
                              ),
                            );
                          },
                        ),
                      )
                    ]),
              ),
            ))));
  }
}
