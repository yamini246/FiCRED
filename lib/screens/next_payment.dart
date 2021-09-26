import 'package:flutter/material.dart';

class NextPayment extends StatefulWidget {
  const NextPayment({Key? key}) : super(key: key);

  @override
  _NextPaymentState createState() => _NextPaymentState();
}

class _NextPaymentState extends State<NextPayment> {
String dropdownValue = 'Select Interval';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Next Payment'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                height: 170,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue.shade900, width: 1),
                      borderRadius: BorderRadius.circular(11)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '|',
                              style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900]
                              ),
                            ),
                          ),
                          Text(
                            'Loan Payment Interval',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                  DecoratedBox(
                    decoration: ShapeDecoration(
                      color: Colors.grey[300],
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Color(0xFF0D47A1)),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 21
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['Select Interval','Monthly', 'Biannually', 'Annually']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                      ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                height: 170,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue.shade900, width: 1),
                      borderRadius: BorderRadius.circular(11)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '|',
                              style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900]
                              ),
                            ),
                          ),
                          Text(
                            'Interest Rate',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter',
                          ),
                        ),
                      )],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                height: 170,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue.shade900, width: 1),
                      borderRadius: BorderRadius.circular(11)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '|',
                              style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900]
                              ),
                            ),
                          ),
                          Text(
                            'Next Loan Payment',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter',
                          ),
                        ),
                      )],
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
