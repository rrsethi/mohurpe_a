import 'package:flutter/material.dart';
import 'package:mohurpe_a/constants.dart';
import 'package:mohurpe_a/screens/paymentSelection/payment_selection.dart';

class LastFiveUpiID {
  late String upiID;

  LastFiveUpiID({required this.upiID});
}

class ReceiverUpiIDScreen extends StatefulWidget {
  const ReceiverUpiIDScreen({Key? key}) : super(key: key);

  @override
  State<ReceiverUpiIDScreen> createState() => _ReceiverUpiIDScreenState();
}

class _ReceiverUpiIDScreenState extends State<ReceiverUpiIDScreen> {
  List<LastFiveUpiID> upiid = [
    LastFiveUpiID(upiID: "rrsethi"),
    LastFiveUpiID(upiID: "rrsethi"),
    LastFiveUpiID(upiID: "rrsethi"),
    LastFiveUpiID(upiID: "rrsethi"),
    LastFiveUpiID(upiID: "rrsethi"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          "Enter beneficiary upi id",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Recently used upi id's:",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 260,
              width: 190,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: upiid.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      height: 43,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.grey),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 15,
                          ),
                          Container(
                              alignment: Alignment.center,
                              height: 35,
                              // width: 90,
                              padding: const EdgeInsets.all(10),
                              child: Text(upiid[index].upiID,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.05, 50, size.width * 0.05, size.height * 0.01),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'UPI ID',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 3, color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Enter receiver's upi id",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.05, 15, size.width * 0.05, size.height * 0.01),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Amount',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 3, color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Enter Amount",
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(
                  0, size.height * 0.03, 0, size.height * 0.2),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(size.width * 0.5, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: const Text(
                  'PAY',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PaymentSelectionScreen();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
