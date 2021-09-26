import 'package:flutter/material.dart';

import 'next_payment.dart';


class Planner extends StatefulWidget {
  const Planner({Key? key}) : super(key: key);

  @override
  _PlannerState createState() => _PlannerState();
}

class _PlannerState extends State<Planner> {
  static const double radius = 20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text('Plan your payments here'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
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
                                  Navigator.pop(context);
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
                        color: Colors.blue[200],
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
                                  onTap: () {
                                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                      content: Text("Planner Screen"),
                                    ));
                                  },
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
                  height: 200,
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
                                Icons.emoji_emotions_outlined,
                                color: Colors.blue.shade900,
                                size: 35,
                              ),
                            ),
                            Text(
                              'Yay !!!',
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                color: Colors.blue[900],
                              ),
                              width: 5,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Your loan is repaid by :',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            '11 August 2025',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 35,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
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
                    child: InkWell(
                      onTap: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const NextPayment()));
                      },
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
                                'Next Payment',
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(190, 8, 5, 8),
                                child: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.blue[900],
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(190, 0, 8, 8),
                            child: Text(
                                'Amount : USD 99',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(190, 0, 8, 8),
                            child: Text(
                                'Due on: 13-11-2021',
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

              ],)
        )
    );  }
}