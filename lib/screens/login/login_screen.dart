import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohurpe_a/screens/login/components/body.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Body(),
        // color: Colors.red,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Theme.of(context).primaryColor),
      child: SafeArea(
        child: Body(),
      ),
    ));
  }
}
