import 'package:flutter/material.dart';
import'mainPage.dart';
import 'forgetpassword.dart';
import 'signup.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
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
                      'CBQ Mobile',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    key: Key('username'),
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    key: Key('password'),
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  key: Key('forgetpasswordButton'),
                  onPressed: () async{
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>forgetpassword()));


                  },
                  textColor: Colors.red,
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      key: Key('loginButton'),
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text('Login'),
                      onPressed: () async{
                        Navigator.push(context,
                            MaterialPageRoute(builder:(context)=>mainPage()));


                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          key: Key('signupButton'),
                          textColor: Colors.red,
                          child: Text(
                            'Sign up',
                            style: TextStyle(fontSize: 20),
                          ),

                            onPressed: () async{
                              Navigator.push(context,
                                  MaterialPageRoute(builder:(context)=>signup()));


                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}



