import 'package:fiicred/screens/home.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/login.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 190, 50, 190),
                child: Text(
                    'FiCRED',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[100]
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person,size: 41,),
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock,size: 41,),
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                height: 70,
                width: 150,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue.shade900, width: 1),
                      borderRadius: BorderRadius.circular(11)),
                  child: InkWell(
                    onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                      child: Text(
                          'Login',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800]
                        ),
                      ),
                    )
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}