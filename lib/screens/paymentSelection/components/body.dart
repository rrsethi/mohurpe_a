import 'package:flutter/material.dart';
import 'package:mohurpe_a/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // The inital group value
  String _selectedMethod = 'wallet';

  var walletBalance = 10;
  // var rr = "Rs.";

  // List of registeredUPIs in our dropdown menu
  // var registeredUPIs = [
  //   'rrr1',
  //   'rr2',
  //   'rr3',
  //   'rr4',
  //   'rr5',
  // ];
  String dropdownvalueUPI = 'UPI1';

  // List of registeredUPIs in our dropdown menu
  var registeredUPIs = [
    'UPI1',
    'UPI2',
    'UPI3',
    'UPI4',
    'UPI5',
  ];

  String dropdownvalueCard = 'CARD1';

  // List of registeredUPIs in our dropdown menu
  var registeredCards = [
    'CARD1',
    'CARD2',
    'CARD3',
    'CARD4',
    'CARD5',
  ];

  String dropdownvalueNB = 'NB1';

  // List of registeredUPIs in our dropdown menu
  var registeredNBs = [
    'NB1',
    'NB2',
    'NB3',
    'NB4',
    'NB5',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          "Select Payment Method",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Text('Please let us know your Method:'),
              ListTile(
                leading: Radio<String>(
                  // focusColor: MaterialStateProperty.all<Color>(Colors.red),
                  // focusColor: kPrimaryColor,
                  activeColor: kPrimaryColor,
                  value: 'wallet',
                  groupValue: _selectedMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedMethod = value!;
                    });
                  },
                ),
                title: const Text(
                  'Wallet',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Radio<String>(
                  activeColor: kPrimaryColor,
                  value: 'upi',
                  groupValue: _selectedMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedMethod = value!;
                    });
                  },
                ),
                title: const Text(
                  'UPI',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Radio<String>(
                  activeColor: kPrimaryColor,
                  value: 'card',
                  groupValue: _selectedMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedMethod = value!;
                    });
                  },
                ),
                title: const Text(
                  'Card',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Radio<String>(
                  activeColor: kPrimaryColor,
                  value: 'netbanking',
                  groupValue: _selectedMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedMethod = value!;
                    });
                  },
                ),
                title: const Text(
                  'Netbanking',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 25),
              // Text(_selectedMethod == 'wallet' ? "wallet":
              // _selectedMethod == "upi" ? "UPI")
              // ListTile(
              //   if (_selectedMethod == "wallet") {
              //   Text("wallet")

              Column(
                children: [
                  _selectedMethod == 'wallet'
                      ? Container(
                          // var walletBalances = 9;
                          padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.grey)),
                          child: Text("Available amount: $walletBalance",
                              style: TextStyle(fontSize: 20)),
                        )
                      : _selectedMethod == "upi"
                          ? Container(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.grey)),
                              child: DropdownButton(
                                // Initial Value

                                value: dropdownvalueUPI,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of registeredUPIs
                                items:
                                    registeredUPIs.map((String registeredUPIs) {
                                  return DropdownMenuItem(
                                    value: registeredUPIs,
                                    child: Text(
                                      registeredUPIs,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalueUPI = newValue!;
                                  });
                                },
                              ),
                            )
                          : _selectedMethod == "card"
                              ? Container(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.grey)),
                                  child: DropdownButton(
                                    // Initial Value

                                    value: dropdownvalueCard,

                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of registeredUPIs
                                    items: registeredCards
                                        .map((String registeredCards) {
                                      return DropdownMenuItem(
                                        value: registeredCards,
                                        child: Text(
                                          registeredCards,
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalueCard = newValue!;
                                      });
                                    },
                                  ),
                                )
                              : _selectedMethod == "netbanking"
                                  ? Container(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.grey)),
                                      child: DropdownButton(
                                        // Initial Value

                                        value: dropdownvalueNB,

                                        // Down Arrow Icon
                                        icon: const Icon(
                                            Icons.keyboard_arrow_down),

                                        // Array list of registeredUPIs
                                        items: registeredNBs
                                            .map((String registeredNBs) {
                                          return DropdownMenuItem(
                                            value: registeredNBs,
                                            child: Text(registeredNBs,
                                                style: TextStyle(fontSize: 20)),
                                          );
                                        }).toList(),
                                        // After selecting the desired option,it will
                                        // change button value to selected value
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownvalueNB = newValue!;
                                          });
                                        },
                                      ),
                                    )
                                  //   child: DropdownButton(
                                  //   value: dropdownvalueUPI,
                                  //   registeredUPIs:
                                  //       registeredUPIs.map((String registeredUPIs) {
                                  //     return DropdownMenuItem(
                                  //       value: registeredUPIs,
                                  //       child: Text(registeredUPIs),
                                  //     );
                                  //   }).toList(),
                                  //   onChanged: (String? newValue) {
                                  //     setState(() {
                                  //       dropdownvalueUPI = newValue!;
                                  //     });
                                  //   },
                                  // ))
                                  : Text('rr sethi'),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 6, top: 25.0),
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
                        // print(useridController.text);
                        // print(passwordController.text);

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return Null;
                        //     },
                      }),
                ),
              ),
            ],
          )),
    );
  }
}
