import 'package:flutter/material.dart';

class Deposits extends StatefulWidget {
  const Deposits({Key? key}) : super(key: key);

  @override
  _DepositsState createState() => _DepositsState();
}

class _DepositsState extends State<Deposits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Deposits'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          height: 150,
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
                      child: Icon(
                        Icons.subdirectory_arrow_left_sharp,
                        color: Colors.blue.shade900,
                        size: 35,
                      ),
                    ),
                    Text(
                        'INCOME',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your income here',
                  ),
                ),
                )],
            ),
          ),
        ),
          Container(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
            height: 150,
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
                    child: Icon(
                      Icons.subdirectory_arrow_right_sharp,
                      color: Colors.blue.shade900,
                      size: 35,
                    ),
                  ),
                  Text(
                    'EXPENDITURE',
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your expenditure here',
                  ),
                ),
              )],
              ),
            ),
          ),
  ]
      ),
    );
  }
}
