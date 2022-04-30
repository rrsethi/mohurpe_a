import 'package:flutter/material.dart';
import 'package:mohurpe_a/screens/pwdreset/components/body.dart';

class PwdResetScreen extends StatelessWidget {
  const PwdResetScreen({Key? key}) : super(key: key);

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
