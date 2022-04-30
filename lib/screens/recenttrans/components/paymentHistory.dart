import 'package:flutter/material.dart';

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

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({Key? key}) : super(key: key);

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  List<History> history = [
    History(amount: 2000, date: "Date", name: "Name", status: "Failed"),
    History(amount: 2000, date: "Date", name: "Name", status: "Failed"),
    History(amount: 2000, date: "Date", name: "Name", status: "Done"),
    History(amount: 2000, date: "Date", name: "Name", status: "Done"),
    History(amount: 2000, date: "Date", name: "Name", status: "Done"),
    History(amount: 2000, date: "Date", name: "Name", status: "Failed"),
    History(amount: 2000, date: "Date", name: "Name", status: "Done"),
    History(amount: 2000, date: "Date", name: "Name", status: "Pending"),
    History(amount: 2000, date: "Date", name: "Name", status: "Pending"),
    History(amount: 2000, date: "Date", name: "Name", status: "Failed"),
    History(amount: 2000, date: "Date", name: "Name", status: "Done"),
    History(amount: 2000, date: "Date", name: "Name", status: "Pending"),
    History(amount: 2000, date: "Date", name: "Name", status: "Failed"),
    History(amount: 2000, date: "Date", name: "Name", status: "Failed"),
    History(amount: 2000, date: "Date", name: "Name", status: "Pending"),
    History(amount: 2000, date: "Date", name: "Name", status: "Pending"),
    History(amount: 2000, date: "Date", name: "Name", status: "Done"),
    History(amount: 2000, date: "Date", name: "Name", status: "Failed"),
    History(amount: 2000, date: "Date", name: "Name", status: "Pending"),
    History(amount: 2000, date: "Date", name: "Name", status: "Done"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Payment History',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.black,
                      fontFamily: 'IndieFlower',
                    )),
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
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
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
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
                            decoration: BoxDecoration(
                              color: bgColor,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              height: 35,
                              width: 90,
                              padding: const EdgeInsets.all(10),
                              child: Text(history[index].name,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                          Container(
                              height: 35,
                              width: 100,
                              padding: const EdgeInsets.all(10),
                              child: Text(history[index].date,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ))),
                          Container(
                              height: 35,
                              width: 90,
                              padding: const EdgeInsets.all(10),
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
            )
          ],
        ),
      ),
    );
  }
}
