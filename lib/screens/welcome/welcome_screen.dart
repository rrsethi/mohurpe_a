import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohurpe_a/screens/welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Body(),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Theme.of(context).primaryColor),
      child: const SafeArea(
        top: true,
        child: Body(),
      ),
    ));
  }
}
