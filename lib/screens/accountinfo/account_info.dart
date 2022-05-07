import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/utils/supabase.dart';
// import 'package:mohurpe_a/constants.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Body(),
        // hide
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      // FocusScope.of(context).unfocus(),
      // hide
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Theme.of(context).primaryColor),
      child: const SafeArea(
        // hideKey
        top: true,
        child: Body(),
        // Foc
      ),
    ));
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Map<String, dynamic>? userDetails;

  @override
  void initState() {
    super.initState();
    SupabaseHandler.getUsetData().then((value) {
      setState(() {
        userDetails = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: kPrimaryColor));
    Size size = MediaQuery.of(context).size;

    dynamic sizeHeight = size.height - 40;
    // print(sizeHeight);
    if (sizeHeight < 800) {
      sizeHeight = 800.0;
    }
    // print("rr");
    // print(sizeHeight);
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          height: sizeHeight,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, sizeHeight * 0.1, 0, 0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: size.width * 0.6,
                    // height: sizeHeight * 0.2,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Text(
                    "Welcome ${userDetails?['name'] ?? "loading..."}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: sizeHeight * 0.03),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, sizeHeight * 0.03, 0, 0),
                child: Text(
                  "Name: ${userDetails?['name'] ?? "loading..."}",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 16, 0, 0),
                child: Text(
                  "Email: ${SupabaseHandler.getCurrentUser()?.email ?? "no user"}",
                  // "Email: ${SupabaseHandler.client.from('user_details').select('name').execute().data()}",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 16, 0, 0),
                child: Text(
                  "Phone: ${userDetails?['phone'] ?? "loading..."}",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 16, 0, 0),
                child: Text(
                  "Aadhar: ${userDetails?['aadhar'] ?? "loading..."}",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 16, 0, 0),
                child: Text(
                  "PAN: ${userDetails?['pan'] ?? "loading..."}",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 16, 0, 0),
                child: Text(
                  "Gender: ${userDetails?['gender'] ?? "loading..."}",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
