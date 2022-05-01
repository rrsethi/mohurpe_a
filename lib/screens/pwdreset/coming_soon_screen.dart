import 'package:flutter/material.dart';
import 'package:mohurpe_a/screens/pwdreset/components/body.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({Key? key}) : super(key: key);

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
