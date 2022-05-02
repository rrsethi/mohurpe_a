import 'package:flutter/material.dart';
import 'package:mohurpe_a/screens/paymentSelection/components/body.dart';

class PaymentSelectionScreen extends StatelessWidget {
  const PaymentSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        top: true,
        child: Body(),
      ),
      // body: Body(),
    );
  }
}
