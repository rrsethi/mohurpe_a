import 'package:flutter/material.dart';
import 'package:mohurpe_a/screens/recenttrans/components/paymentHistory.dart';

class RecentTransScreen extends StatelessWidget {
  const RecentTransScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // body: Body(),
      body: SafeArea(
        top: true,
        child: PaymentHistory(),
        //
      ),
    );
  }
}
