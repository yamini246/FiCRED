import 'package:flutter/material.dart';

class Loans extends StatefulWidget {
  const Loans({Key? key}) : super(key: key);

  @override
  _LoansState createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[200],
    appBar: AppBar(
    backgroundColor: Colors.blue[900],
    title: const Text('Loan'),
    centerTitle: true,
    elevation: 0,
    ),
      body: Container(
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
                      Icons.attach_money_sharp,
                      color: Colors.blue.shade900,
                      size: 35,
                    ),
                  ),
                  Text(
                    'Total Loan Amount',
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
                    hintText: 'Enter your loan amount here',
                  ),
                ),
              )],
          ),
        ),
      ),
    );
  }
}
