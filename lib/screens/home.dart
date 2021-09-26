import 'package:fiicred/screens/credit_score.dart';
import 'package:fiicred/screens/deposits.dart';
import 'package:fiicred/screens/loan.dart';
import 'package:fiicred/screens/planner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const double radius = 20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('FiCRED'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: Colors.blue[200],
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius),
                    side: BorderSide(color: Colors.blue.shade900, width: 2),
                  ),
                  child :Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                content: Text("Account Holder"),
                              ));
                            },
                            icon: const Icon(Icons.person),
                            iconSize: 150.0,
                            color: Colors.blue[900],
                          ),

                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              'Jamie Dimon',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)
                          ),
                        )]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Card(
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                      side: BorderSide(color: Colors.blue.shade900, width: 2),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(radius),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () { Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Planner()));},
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  Icons.event_note_sharp,
                                  size: 150.0,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'Planner',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              height: 250,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue.shade900, width: 1),
                    borderRadius: BorderRadius.circular(11)),
                child: InkWell(
                  onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Deposits()));
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(90, 8, 90, 8),
                            child: Image.asset(
                              'assets/deposit.png',
                              fit: BoxFit.fill,
                              height: 100,
                            ),
                          ),

                        ],
                      ),
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
                            'Deposits',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(230, 8, 5, 8),
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.blue[900],
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(220, 0, 0, 8),
                        child: Text(
                          'Balance : ',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(210, 0, 0, 8),
                        child: Text(
                          'USD 768',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              height: 250,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue.shade900, width: 1),
                    borderRadius: BorderRadius.circular(11)),
                child: InkWell(
                  onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Loans()));
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(110, 8, 110, 8),
                            child: Image.asset(
                              'assets/loan.png',
                              fit: BoxFit.fill,
                              height: 100,
                            ),
                          ),

                        ],
                      ),
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
                            'Loan',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(270, 8, 5, 8),
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.blue[900],
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(220, 0, 0, 8),
                        child: Text(
                          'Outstanding : ',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(210, 0, 0, 8),
                        child: Text(
                          'USD 38792',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              height: 230,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue.shade900, width: 1),
                    borderRadius: BorderRadius.circular(11)),
                child: InkWell(
                  onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CreditScore()));
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(90, 8, 90, 8),
                            child: Image.asset(
                              'assets/credit score.png',
                              fit: BoxFit.fill,
                              height: 100,
                            ),
                          ),

                        ],
                      ),
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
                            'Credit Score',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(200, 8, 5, 8),
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.blue[900],
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(250, 0, 0, 8),
                        child: Text(
                          '692',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],

        ),
      ),
    );


  }
}