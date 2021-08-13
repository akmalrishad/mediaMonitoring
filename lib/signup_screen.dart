import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
        ),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Container(
                  alignment: Alignment.center,
                  // color: Colors.red,
                  width: 480,
                  height: 480,
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.zero,
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Enter your Name'),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          'email',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Enter your email'),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Enter your password'),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          'Retype your password',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Enter your password'),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )),
            )));
  }
}
