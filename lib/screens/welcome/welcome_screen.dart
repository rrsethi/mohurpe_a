import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohurpe_a/screens/welcome/components/body.dart';
// import 'package:mohurpe_a/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Body(),
        // hide
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      // FocusScope.of(context).unfocus(),
      // hide
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Theme.of(context).primaryColor),
      child: const SafeArea(
        // hideKey
        top: true,
        child: Body(),
        // Foc
      ),
    ));
  }
}
