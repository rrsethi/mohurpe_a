import 'package:flutter/material.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/home/components/body_content.dart';
import 'package:mohurpe_a/screens/pwdreset/coming_soon_screen.dart';
import 'package:mohurpe_a/screens/recenttrans/recent_transaction.dart';

class Body extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey();

  Body({Key? key}) : super(key: key);
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
      // /////////////////
      ///////
      ///////
      ///////
      // body: Transaction(),
      body: const BodyContent(),
      // body: Transaction(),
      // body: condition? Payment():Transaction(),
      // body: Column(
      //   children: <Widget>[
      //     // demo1(),
      //     Payment(),
      //     // demo2(),
      //     // Transaction()
      //   ],
      // ),
      //////////////////
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: size.height * 0.055,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: Text(
                  'Hello RR Sethi',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.017),
                ),
              ),
            ),
            // Text("RR")
            // ListTile(
            //   title: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       minimumSize: Size(0, size.height * 0.04),
            //       // shape: RoundedRectangleBorder(
            //       //     borderRadius: BorderRadius.circular(size.height * 0.06)),
            //     ),
            //     child: Text(
            //       'Cashback & Offers',
            //       style: TextStyle(
            //         fontSize: size.height * 0.02,
            //         color: Colors.white,
            //       ),
            //     ),
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) {
            //             return LogInScreen();
            //           },
            //         ),
            //       );
            //     },
            //   ),
            // ),
            // ListTile(
            //   // minVerticalPadding: 10,
            //   title: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       minimumSize: Size(0, size.height * 0.04),

            //       // shape: RoundedRectangleBorder(
            //       //     borderRadius: BorderRadius.circular(size.height * 0.06)),
            //     ),
            //     child: Text(
            //       'Payment Methods',
            //       style: TextStyle(
            //         fontSize: size.height * 0.02,
            //         color: Colors.white,
            //       ),
            //     ),
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) {
            //             return LogInScreen();
            //           },
            //         ),
            //       );
            //     },
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Container(
                decoration: BoxDecoration(
                    // borderRadius: size.width*0.01,
                    borderRadius: BorderRadius.circular(size.width * 0.025),
                    color: Colors.grey.shade200,
                    border: Border.all(
                      color: Colors.grey.shade300, // red as border color
                    )),
                child: ListTile(
                  // shape: ,
                  title: Text('Cashback & Offers',
                      style: TextStyle(
                          fontSize: size.height * 0.015, color: kPrimaryColor)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ComingSoonScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Container(
                // height: size.height * 0.05,
                decoration: BoxDecoration(
                    // borderRadius: size.width*0.01,
                    borderRadius: BorderRadius.circular(size.width * 0.025),
                    color: Colors.grey.shade200,
                    border: Border.all(
                      color: Colors.grey.shade300, // red as border color
                    )),
                // color: Colors.grey.shade200,
                child: ListTile(
                  title: Text(
                    'Payment Method',
                    style: TextStyle(
                        fontSize: size.height * 0.015, color: kPrimaryColor),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ComingSoonScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Container(
                decoration: BoxDecoration(
                    // borderRadius: size.width*0.01,
                    borderRadius: BorderRadius.circular(size.width * 0.025),
                    color: Colors.grey.shade200,
                    border: Border.all(
                      color: Colors.grey.shade300, // red as border color
                    )),
                // color: Colors.grey.shade200,
                child: ListTile(
                  title: Text('Saved Cards',
                      style: TextStyle(
                          fontSize: size.height * 0.015, color: kPrimaryColor)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ComingSoonScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Container(
                decoration: BoxDecoration(
                    // borderRadius: size.width*0.01,
                    borderRadius: BorderRadius.circular(size.width * 0.025),
                    color: Colors.grey.shade200,
                    border: Border.all(
                      color: Colors.grey.shade300, // red as border color
                    )),
                // color: Colors.grey.shade200,
                child: ListTile(
                  title: Text('Payment History',
                      style: TextStyle(
                          fontSize: size.height * 0.015, color: kPrimaryColor)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const RecentTransScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Container(
                decoration: BoxDecoration(
                    // borderRadius: size.width*0.01,
                    borderRadius: BorderRadius.circular(size.width * 0.025),
                    color: Colors.grey.shade200,
                    border: Border.all(
                      color: Colors.grey.shade300, // red as border color
                    )),
                // color: Colors.grey.shade200,
                child: ListTile(
                  title: Text('Account Info',
                      style: TextStyle(
                          fontSize: size.height * 0.015, color: kPrimaryColor)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ComingSoonScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Container(
                decoration: BoxDecoration(
                    // borderRadius: size.width*0.01,
                    borderRadius: BorderRadius.circular(size.width * 0.025),
                    color: Colors.grey.shade200,
                    border: Border.all(
                      color: Colors.grey.shade300, // red as border color
                    )),
                // borderRadius: BorderRadius.circular(size.width * 0.05),
                child: ListTile(
                  title: Text('Support',
                      style: TextStyle(
                          fontSize: size.height * 0.015, color: kPrimaryColor)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ComingSoonScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
