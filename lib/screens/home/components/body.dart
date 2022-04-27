import 'package:flutter/material.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/pwdreset/pwdreset_screen.dart';

class Body extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return Container();
    // return Scaffold(
    //   appBar: AppBar(title: const Text("RR Sethi")),
    // );
    return Scaffold(
      key: _scaffoldState,
      // backgroundColor: Colors.black,
      // appBar: AppBar(
      //   // backgroundColor: Colors.white,
      //   backgroundColor: kPrimaryColor,
      //   // title: const Text("Welcome to MohurPe")
      //   // centerTitle: true,
      //   leading: Icon(Icons.account_circle_outlined, size: size.hei,),
      //   title: Text('SMARTID',
      //       style: TextStyle(
      //           fontFamily: 'Open Sans', fontWeight: FontWeight.bold)),

      // ),
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
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
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
    // appBar: AppBar(title: Text(title)),
    //   body: const Center(
    //     child: Text('My Page!'),
    //   ),
    // const name = 'Sarah Abs';
    // const email = 'sarah@abs.com';
    // const urlImage =
    //     'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    //   return Drawer(
    //     child: Material(
    //       color: Colors.white,
    //       child: ListView(
    //         children: <Widget>[
    //           // buildHeader(
    //           //   urlImage: urlImage,
    //           //   name: name,
    //           //   email: email,
    //           //   onClicked: () => Navigator.of(context).push(MaterialPageRoute(
    //           //     builder: (context) => UserPage(
    //           //       name: 'Sarah Abs',
    //           //       urlImage: urlImage,
    //           //     ),
    //           //   )),
    //           // ),
    //           Container(
    //             padding: padding,
    //             child: Column(
    //               children: [
    //                 const SizedBox(height: 12),
    //                 buildSearchField(),
    //                 // const SizedBox(height: 24),
    //                 const SizedBox(height: 24),
    //                 Divider(color: Colors.black26),
    //                 const SizedBox(height: 24),
    //                 buildMenuItem(
    //                   text: 'Payment History',
    //                   icon: Icons.payments,
    //                   onClicked: () => selectedItem(context, 0),
    //                 ),
    //                 // const SizedBox(height: 16),
    //                 const SizedBox(height: 24),
    //                 Divider(color: Colors.black87),
    //                 const SizedBox(height: 24),
    //                 buildMenuItem(
    //                   text: 'Payment Methods',
    //                   icon: Icons.payment,
    //                   onClicked: () => selectedItem(context, 1),
    //                 ),
    //                 const SizedBox(height: 24),
    //                 Divider(color: Colors.black87),
    //                 const SizedBox(height: 24),
    //                 // const SizedBox(height: 16),
    //                 buildMenuItem(
    //                   text: 'Saved Cards',
    //                   icon: Icons.card_membership,
    //                   onClicked: () => selectedItem(context, 2),
    //                 ),
    //                 // const SizedBox(height: 16),
    //                 // buildMenuItem(
    //                 //   text: 'Updates',
    //                 //   icon: Icons.update,
    //                 //   onClicked: () => selectedItem(context, 3),
    //                 // ),
    //                 const SizedBox(height: 24),
    //                 Divider(color: Colors.black87),
    //                 const SizedBox(height: 24),
    //                 buildMenuItem(
    //                   text: 'Account information',
    //                   icon: Icons.account_box_sharp,
    //                   onClicked: () => selectedItem(context, 4),
    //                 ),
    //                 const SizedBox(height: 24),
    //                 Divider(color: Colors.black87),
    //                 const SizedBox(height: 24),
    //                 // const SizedBox(height: 16),
    //                 buildMenuItem(
    //                   text: 'Bank offers',
    //                   icon: Icons.offline_share,
    //                   onClicked: () => selectedItem(context, 5),
    //                 ),
    //                 const SizedBox(height: 24),
    //                 Divider(color: Colors.black26),
    //                 const SizedBox(height: 24),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }

    // Widget buildHeader({
    //   required String urlImage,
    //   required String name,
    //   required String email,
    //   required VoidCallback onClicked,
    // }) =>
    //     InkWell(
    //       onTap: onClicked,
    //       child: Container(
    //         padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
    //         child: Row(
    //           children: [
    //             CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
    //             SizedBox(width: 20),
    //             Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   name,
    //                   style: TextStyle(fontSize: 20, color: Colors.white),
    //                 ),
    //                 const SizedBox(height: 4),
    //                 Text(
    //                   email,
    //                   style: TextStyle(fontSize: 14, color: Colors.white),
    //                 ),
    //               ],
    //             ),
    //             Spacer(),
    //             CircleAvatar(
    //               radius: 24,
    //               backgroundColor: Color.fromRGBO(30, 60, 168, 1),
    //               child: Icon(Icons.add_comment_outlined, color: Colors.white),
    //             )
    //           ],
    //         ),
    //       ),
    //     );

    // Widget buildSearchField() {
    //   final color = Colors.black;

    //   return TextField(
    //     style: TextStyle(color: color),
    //     decoration: InputDecoration(
    //       contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    //       hintText: 'Search',
    //       hintStyle: TextStyle(color: color),
    //       prefixIcon: Icon(Icons.search, color: color),
    //       filled: true,
    //       fillColor: Colors.white12,
    //       enabledBorder: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(5),
    //         borderSide: BorderSide(color: color.withOpacity(0.7)),
    //       ),
    //       focusedBorder: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(5),
    //         borderSide: BorderSide(color: color.withOpacity(0.7)),
    //       ),
    //     ),
    //   );
    // }

    // Widget buildMenuItem({
    //   required String text,
    //   required IconData icon,
    //   VoidCallback? onClicked,
    // }) {
    //   final color = Colors.black;
    //   final hoverColor = Colors.black12;

    //   return ListTile(
    //     leading: Icon(icon, color: color),
    //     title: Text(text, style: TextStyle(color: color)),
    //     hoverColor: hoverColor,
    //     onTap: onClicked,
    //   );
    // }

    // void selectedItem(BuildContext context, int index) {
    //   Navigator.of(context).pop();

    //   switch (index) {
    //     case 0:
    //       Navigator.of(context).push(MaterialPageRoute(
    //         builder: (context) => PwdResetScreen(),
    //       ));
    //       break;
    //     case 1:
    //       Navigator.of(context).push(MaterialPageRoute(
    //         builder: (context) => PwdResetScreen(),
    //       ));
    //       break;
    //     case 2:
    //       Navigator.of(context).push(MaterialPageRoute(
    //         builder: (context) => PwdResetScreen(),
    //       ));
    //       break;
    //     case 3:
    //       Navigator.of(context).push(MaterialPageRoute(
    //         builder: (context) => PwdResetScreen(),
    //       ));
    //       break;
    //     case 4:
    //       Navigator.of(context).push(MaterialPageRoute(
    //         builder: (context) => PwdResetScreen(),
    //       ));
    //       break;
    //     case 5:
    //       Navigator.of(context).push(MaterialPageRoute(
    //         builder: (context) => PwdResetScreen(),
    //       ));
    //       break;
    // }
//   }
// }
