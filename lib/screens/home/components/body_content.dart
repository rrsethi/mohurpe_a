import 'package:flutter/material.dart';
import 'package:mohurpe_a/screens/pwdreset/coming_soon_screen.dart';
import 'package:mohurpe_a/screens/receiverDetail/receiver_phone.dart';
import 'package:mohurpe_a/screens/receiverDetail/receiver_user_id.dart';
import 'package:mohurpe_a/screens/receiverDetail/receiver_upi_id.dart';
import 'package:mohurpe_a/screens/recenttrans/recent_transaction.dart';

class History {
  late String name;
  late String date;
  late String status;
  late int amount;

  History(
      {required this.amount,
      required this.date,
      required this.name,
      required this.status});
}

class Dues {
  late String name;
  late String date;
  late int amount;

  Dues({required this.amount, required this.date, required this.name});
}

class BodyContent extends StatefulWidget {
  const BodyContent({Key? key}) : super(key: key);

  @override
  State<BodyContent> createState() => _BodyContentState();
}

class _BodyContentState extends State<BodyContent> {
  List<History> history = [
    History(amount: 2000, date: "Date", name: "Name", status: "Failed"),
    History(amount: 2000, date: "Date", name: "Name", status: "Failed"),
    History(amount: 2000, date: "Date", name: "Name", status: "Done"),
    History(amount: 2000, date: "Date", name: "Name", status: "Done"),
    History(amount: 2000, date: "Date", name: "Name", status: "Pending"),
  ];

  List<Dues> due = [
    Dues(amount: 2000, date: "Date", name: "Name"),
    Dues(amount: 2000, date: "Date", name: "Name"),
    Dues(amount: 2000, date: "Date", name: "Name"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      // height: size.height,
      // height: double.infinity,
      // width: size.width,
      // padding: EdgeInsets.fromLTRB(0, size.height * 0.03, 0, 0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(size.width * 0.05),
            child: Container(
              // height: size.height * 0.25,
              decoration: BoxDecoration(
                  // borderRadius: size.width*0.01,
                  borderRadius: BorderRadius.circular(size.width * 0.05),
                  color: Colors.grey.shade200,
                  border: Border.all(
                    color: Colors.grey.shade300, // red as border color
                  )),
              child: Row(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                size.width * 0.04, size.width * 0.04, 0, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize:
                                    Size(size.width * 0.2, size.width * 0.2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              child: const Text(
                                'QR\nCode',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(size.width * 0.05,
                                size.width * 0.07, 0, size.width * 0.05),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize:
                                    Size(size.width * 0.2, size.width * 0.2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              child: const Text(
                                'UPI\nId',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const ReceiverUpiIDScreen();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                size.width * 0.09, size.width * 0.05, 0, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize:
                                    Size(size.width * 0.2, size.width * 0.2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              child: const Text(
                                'User\nId',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const ReceiverUserIDScreen();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(size.width * 0.09,
                                size.width * 0.07, 0, size.width * 0.05),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize:
                                    Size(size.width * 0.2, size.width * 0.2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              child: const Text(
                                'Bank\nAccount',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
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
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                size.width * 0.09, size.width * 0.05, 0, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize:
                                    Size(size.width * 0.2, size.width * 0.2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              child: const Text(
                                'Phone\nNo.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const ReceiverPhoneScreen();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(size.width * 0.09,
                                size.width * 0.07, 0, size.width * 0.05),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize:
                                    Size(size.width * 0.2, size.width * 0.2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              child: const Text(
                                'Pay\nBill',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
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
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Recent Transactions',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.black,
                      // fontFamily: 'IndieFlower',
                    )),
                InkWell(
                  child: const Icon(
                    // Alignment.topRight
                    Icons.arrow_right,
                    color: Colors.black,
                    size: 30,
                  ),
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
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 225,
            // height: size.height * 0.22,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: history.length,
                itemBuilder: (context, index) {
                  String status = history[index].status;
                  Color bgColor;
                  if (status == "Done") {
                    bgColor = Colors.green;
                  } else if (status == "Failed") {
                    bgColor = Colors.red;
                  } else {
                    bgColor = Colors.yellow;
                  }

                  return Container(
                    margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 10,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: bgColor,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                            height: 30,
                            width: 90,
                            padding: const EdgeInsets.all(8),
                            child: Text(history[index].name,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        Container(
                            height: 30,
                            width: 100,
                            padding: const EdgeInsets.all(8),
                            child: Text(history[index].date,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ))),
                        Container(
                            height: 30,
                            width: 90,
                            padding: const EdgeInsets.all(8),
                            child: Text(
                                "Rs. " + history[index].amount.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Bills Due',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.black,
                      fontFamily: 'IndieFlower',
                    )),
                // const SizedBox(
                //   width: 40,
                // ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            // height: size.height * 0.15,
            height: 125,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: due.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 10,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.yellow,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                            height: 30,
                            width: 90,
                            padding: const EdgeInsets.all(8),
                            child: Text(due[index].name,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                        Container(
                            height: 30,
                            width: 100,
                            padding: const EdgeInsets.all(8),
                            child: Text(due[index].date,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ))),
                        Container(
                            height: 30,
                            width: 90,
                            padding: const EdgeInsets.all(8),
                            child: Text("Rs. " + due[index].amount.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.05,
                top: size.width * 0.03,
                bottom: size.width * 0.02),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Offers',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.black,
                      fontFamily: 'IndieFlower',
                    )),
                // const SizedBox(
                //   width: 40,
                // ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                  bottom: size.width * 0.05),
              // padding: EdgeInsets.only(
              //     left: size.width * 0.05, right: size.width * 0.05),
              child: Container(
                // height: size.height * 0.25,
                decoration: BoxDecoration(
                    // borderRadius: size.width*0.01,
                    borderRadius: BorderRadius.circular(size.width * 0.05),
                    color: Colors.grey.shade200,
                    border: Border.all(
                      color: Colors.grey.shade300, // red as border color
                    )),
                // ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, size.width * 0.04, 0, size.width * 0.04),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(size.width * 0.2, size.width * 0.2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child: const Text(
                          '10% off\non bill',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            // fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(size.width * 0.09,
                          size.width * 0.04, 0, size.width * 0.04),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(size.width * 0.2, size.width * 0.2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child: const Text(
                          '20% off\non stores',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            // fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(size.width * 0.09,
                          size.width * 0.04, 0, size.width * 0.04),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(size.width * 0.2, size.width * 0.2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child: const Text(
                          '25% off\non travel',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            // fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
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
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
