import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_media_monitoring/model/loginModel.dart';
import 'package:web_media_monitoring/service/ApiService.dart';
import 'package:web_media_monitoring/signup_screen.dart';
import 'package:http/http.dart' as http;

import 'dashboard.dart';

AlertDialog getAlertDialog(title, content, context) {
  return AlertDialog(
    title: Text("Login Failed"),
    content: Text('$content'),
    actions: <Widget>[
      TextButton(
          child: Text("Close"),
          onPressed: () {
            Navigator.of(context).pop();
          })
    ],
  );
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late ApiService apiService = new ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Container(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Container(
                  alignment: Alignment.center,
                  // color: Colors.red,
                  width: 480,
                  height: 360,
                  padding: EdgeInsets.all(30),
                  child: Form(
                    key: this._formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.zero,
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Enter your Email'),
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
                        TextField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Enter your password'),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(top: 15),
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Forgot Password"),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          child: TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            onPressed: () {
                              apiService.login(emailController.text,
                                  passwordController.text);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()));
                            },
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignupScreen();
                              }));
                            },
                            child: Text("Don't have an account yet?"),
                          ),
                        ),
                      ],
                    ),
                  )),
            )));
  }

//   bool validateAndSave() {
//     final form = _formKey.currentState;
//     if (form!.validate()) {
//       form.save();
//       return true;
//     }
//     return false;
//   }
}
