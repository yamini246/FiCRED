import 'package:flutter/material.dart';

class CreditScore extends StatefulWidget {
  const CreditScore({Key? key}) : super(key: key);

  @override
  _CreditScoreState createState() => _CreditScoreState();
}

class _CreditScoreState extends State<CreditScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Credit Score'),
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
                            'Credit Utilisation Ratio',
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
                            'Number Of Late Payments',
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
                            'Number Of Accounts In Good Standing',
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
