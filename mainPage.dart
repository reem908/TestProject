import 'package:flutter/material.dart';
import 'main.dart';
void main() {
  runApp(MaterialApp(
    home: mainPage(),
  ));
}

class mainPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<mainPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'CBQ mobile',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),




                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Welcome to our mobile app'),
                        FlatButton(
                          key: Key('backButton'),
                          textColor: Colors.red,
                          child: Text(
                            'Back',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () async{
                            Navigator.push(context,
                                MaterialPageRoute(builder:(context)=>MyApp()));

                          },
                        )
                      ],


                      mainAxisAlignment: MainAxisAlignment.center,
                    ))







              ],
            )));
  }
}