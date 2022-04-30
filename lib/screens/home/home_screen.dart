import 'package:flutter/material.dart';
import 'package:mohurpe_a/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Body(),
      ),
      // body: Body(),
    );
  }
}
