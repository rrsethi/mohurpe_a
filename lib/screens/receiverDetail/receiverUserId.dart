import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/home/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:mohurpe_a/constants.dart';

class LastFiveUserID {
  late String userID;

  LastFiveUserID({required this.userID});
}

class ReceiverUserIDScreen extends StatefulWidget {
  const ReceiverUserIDScreen({Key? key}) : super(key: key);

  @override
  State<ReceiverUserIDScreen> createState() => _ReceiverUserIDScreenState();
}

class _ReceiverUserIDScreenState extends State<ReceiverUserIDScreen> {
  List<LastFiveUserID> userid = [
    LastFiveUserID(userID: "rrsethi"),
    LastFiveUserID(userID: "rrsethi"),
    LastFiveUserID(userID: "rrsethi"),
    LastFiveUserID(userID: "rrsethi"),
    LastFiveUserID(userID: "rrsethi"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          "Enter beneficiary user id",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // const SizedBox(
            //   height: 60,
            // ),

            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: userid.length,
                  itemBuilder: (context, index) {
                    // String status = history[index].status;
                    // Color bgColor;
                    // if (status == "Done") {
                    //   bgColor = Colors.green;
                    // } else if (status == "Failed") {
                    //   bgColor = Colors.red;
                    // } else {
                    // bgColor = Colors.yellow;
                    // }

                    return Container(
                      margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 10,
                            padding: const EdgeInsets.all(10),
                            // decoration: BoxDecoration(
                            //   // color: bgColor,
                            // ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              height: 35,
                              width: 90,
                              padding: const EdgeInsets.all(10),
                              child: Text(userid[index].userID,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                          // Container(
                          //     height: 35,
                          //     width: 100,
                          //     padding: const EdgeInsets.all(10),
                          //     child: Text(history[index].date,
                          //         style: const TextStyle(
                          //           fontSize: 12,
                          //           color: Colors.black,
                          //         ))),
                          // Container(
                          //     height: 35,
                          //     width: 90,
                          //     padding: const EdgeInsets.all(10),
                          //     child: Text(
                          //         "Rs. " + history[index].amount.toString(),
                          //         style: const TextStyle(
                          //             fontSize: 12,
                          //             color: Colors.black,
                          //             fontWeight: FontWeight.bold))),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(size.width * 0.05, size.height * 0.1,
                  size.width * 0.05, size.height * 0.01),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'User ID',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 3, color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Enter receiver's user id",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
