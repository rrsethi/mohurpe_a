import 'package:flutter/material.dart';
import 'package:mohurpe_a/screens/signup/components/body.dart';

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
