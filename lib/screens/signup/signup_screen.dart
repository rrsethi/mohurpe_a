// import 'dart:developer';

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/home/home_screen.dart';
import 'package:mohurpe_a/screens/login/login_screen.dart';
import 'package:mohurpe_a/utils/supabase.dart';
import 'package:supabase/supabase.dart';
import 'package:intl/intl.dart';
// import 'package:bordered_text/bordered_text.dart';
// import 'package:flutter_dropdown/flutter_dropdown.dart';

/*
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // body: Body(),
      body: SafeArea(
        top: true,
        child: Body(),
      ),
    );
  }
}
*/

final TextEditingController _nameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _confirmPasswordController =
    TextEditingController();
final TextEditingController _phoneController = TextEditingController();
final TextEditingController _aadharController = TextEditingController();
final TextEditingController _panController = TextEditingController();
final TextEditingController _dobController = TextEditingController();
final TextEditingController _genderController = TextEditingController();
String _genderValue = "Select Gender";
// String _view = "rr";
var _borderColor = Colors.grey;
// String _genderController = 'Prefer not to say';

// List of registeredUPIs in our dropdown menu
// var registeredUPIs = [
//   'UPI1',
//   'UPI2',
//   'UPI3',
//   'UPI4',
//   'UPI5',
// ];

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignUpScreenState();
  }
}

class _SignUpScreenState extends State<SignUpScreen> {
  // const Body({Key? key}) : super(key: key);
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    // return Container(color: const Color(0xFFFFE306));
//   }
// }

// class Body extends StatelessWidget {

    // @override
    // Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      top: true,
      bottom: true,
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          color: Colors.white,
          height: size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(0, size.height * 0.05, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/logo.png",
                  width: size.width * 0.5,
                ),
                const Material(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "SignUp to MohurPe",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                // const Text(
                //       'Name',
                //       textAlign: TextAlign.left,
                // ),

                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 40,
                      size.width * 0.05, size.height * 0.01),
                  child: Material(
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
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
                        hintText: "Your Full Name",
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 15,
                      size.width * 0.05, size.height * 0.01),
                  child: Material(
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
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
                        hintText: "Your Email Address",
                      ),
                    ),
                  ),
                ),

                // Padding(
                //   padding: EdgeInsets.fromLTRB(
                //       size.width * 0.05, 15, size.width * 0.05, size.height * 0.01),
                //   child: Material(
                //     child: TextField(
                //       decoration: InputDecoration(
                //         labelText: 'User ID',
                //         enabledBorder: OutlineInputBorder(
                //           borderSide:
                //               const BorderSide(width: 3, color: Colors.grey),
                //           borderRadius: BorderRadius.circular(15),
                //         ),
                //         focusedBorder: OutlineInputBorder(
                //           borderSide:
                //               const BorderSide(width: 3, color: kPrimaryColor),
                //           borderRadius: BorderRadius.circular(15),
                //         ),
                //         hintText: "Create User ID",
                //       ),
                //     ),
                //   ),
                // ),

                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 15,
                      size.width * 0.05, size.height * 0.01),
                  child: Material(
                    child: TextField(
                      controller: _passwordController,
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
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 15,
                      size.width * 0.05, size.height * 0.01),
                  child: Material(
                    child: TextField(
                      controller: _confirmPasswordController,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
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
                        hintText: "Re-type Password",
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 15,
                      size.width * 0.05, size.height * 0.01),
                  child: Material(
                    child: TextField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
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
                        hintText: "Your Phone Number",
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 15,
                      size.width * 0.05, size.height * 0.01),
                  child: Material(
                    child: TextField(
                      controller: _aadharController,
                      decoration: InputDecoration(
                        labelText: 'Aadhar Number',
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
                        hintText: "Your Aadhar Number",
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 15,
                      size.width * 0.05, size.height * 0.01),
                  child: Material(
                    child: TextField(
                      controller: _panController,
                      decoration: InputDecoration(
                        labelText: 'PAN Number',
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
                        hintText: "Your PAN Number",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 15,
                      size.width * 0.05, size.height * 0.01),
                  child: Material(
                    child: TextField(
                      controller: _dobController,
                      decoration: InputDecoration(
                        labelText: 'DOB',
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
                        hintText: "Your DOB",
                      ),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(
                                2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime.now());

                        if (pickedDate != null) {
                          // print(
                          //     pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('dd-MM-yyyy').format(pickedDate);
                          // print(
                          //     formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            _dobController.text =
                                formattedDate; //set output date to TextField value.
                          });
                        }
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 15,
                      size.width * 0.05, size.height * 0.01),
                  child: Material(
                    child: Container(
                      width: size.width,
                      // height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: _borderColor),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // child: Center(
                      //               child: Text("hello world")),
                      child: PopupMenuButton(
                        // value: "rr",

                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 17),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text(_genderValue),
                                // Text('Select Gender'),
                                const Icon(Icons.keyboard_arrow_down),
                              ],
                            )),
                        // onSelected: (value) => setState(() => _genderValue = "rr"),
                        itemBuilder: (context) {
                          return [
                            const PopupMenuItem(value: 0, child: Text("Male")),
                            const PopupMenuItem(
                                value: 1, child: Text("Female")),
                            const PopupMenuItem(value: 2, child: Text("Other")),
                          ];
                        },
                        onSelected: (value) {
                          if (value == 0) {
                            setState(() {
                              _genderController.text = "Male";
                              _genderValue = "Male";
                            });
                          } else if (value == 1) {
                            setState(() {
                              _genderController.text = "Female";
                              _genderValue = "Female";
                            });
                          } else if (value == 2) {
                            setState(() {
                              _genderController.text = "Other";
                              _genderValue = "Other";
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(size.width * 0.7, 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: () async {
                      if ((_emailController.text == "") |
                          (_passwordController.text == "") |
                          (_nameController.text == "") |
                          (_phoneController.text == "") |
                          (_aadharController.text == "") |
                          (_panController.text == "") |
                          (_dobController.text == "") |
                          (_genderController.text == "")) {
                        // log("No email");
                        AlertDialog alert = AlertDialog(
                            title: const Text("Found empty field!"),
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
                      } else if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(_emailController.text)) {
                        AlertDialog alert = AlertDialog(
                            title: const Text("Invalid mail address!"),
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
                      } else if (!RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(_passwordController.text)) {
                        AlertDialog alert = AlertDialog(
                            title: const Text(
                                "Password must be 8 character long and contain at least one alpha, one num and one special char!"),
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
                        // } else if (SupabaseHandler.getUserExistence(
                        //         email: _emailController.text) ==
                        //     false) {
                        //   log("rrsethi123");
                      } else if (_passwordController.text !=
                          _confirmPasswordController.text) {
                        AlertDialog alert = AlertDialog(
                            title: const Text("Password didn't match!"),
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
                      } else if (_phoneController.text.length != 10) {
                        AlertDialog alert = AlertDialog(
                            title: const Text("Phone error!"),
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
                      } else if (_aadharController.text.length != 12) {
                        AlertDialog alert = AlertDialog(
                            title: const Text("Aadhar error!"),
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
                      } else if (_panController.text.length != 10) {
                        AlertDialog alert = AlertDialog(
                            title: const Text("PAN error!"),
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
                      } else {
                        setState(() {
                          loading = true;
                        });
                        // SupabaseHandler.client.auth.api
                        //     .resetPasswordForEmail(_emailController.text);

                        //
                        final GotrueResponse? response =
                            await SupabaseHandler.signUp(
                                email: _emailController.text,
                                password: _passwordController.text);
                        if (response == null) return;
                        final PostgrestResponse res = await SupabaseHandler
                            .client
                            .from('user_details')
                            .insert([
                          {
                            "id": SupabaseHandler.getCurrentUser()?.id,
                            "name": _nameController.text,
                            "aadhar": int.parse(_aadharController.text),
                            "pan": _panController.text,
                            "phone": _phoneController.text,
                            "gender": _genderController.text,
                            "balance": 5000,
                          },
                        ]).execute();
                        log('RES ERROR: ${res.error}');
                        log('RES DATA: ${res.data}');

                        if (res.hasError) return;

                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                      }
                    },

                    // child: const Text(
                    //   'SIGNUP',
                    //   style: TextStyle(
                    //     fontSize: 20.0,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    child: loading
                        ? const CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          )
                        : const Text(
                            'SignUP',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                              text: 'Login',
                              style: const TextStyle(color: kPrimaryColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const LogInScreen();
                                        },
                                      ),
                                    )),
                        ],
                      ),
                    ),
                  ),
                ),
                const Material(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "MohurPe Ltd.\nCopyright 2022-2024",
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
