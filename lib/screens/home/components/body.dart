import 'package:flutter/material.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/pwdreset/pwdreset_screen.dart';

class Body extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldState,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.045),
        child: AppBar(
            backgroundColor: kPrimaryColor,
            leading: IconButton(
                icon: Icon(Icons.account_circle_outlined,
                    size: size.height * 0.025),
                onPressed: () {
                  _scaffoldState.currentState?.openDrawer();
                }),
            title: Text('Welcome to MohurPe',
                style: TextStyle(fontSize: size.height * 0.017))),
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: size.height * 0.07,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: Text(
                  'Hello RR Sethi',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.013),
                ),
              ),
            ),
            // Text("RR")
            ListTile(
              title: const Text('Cashback & Offers'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Payment Method'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Saved Cards'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Payment History'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Account Info'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Support'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
