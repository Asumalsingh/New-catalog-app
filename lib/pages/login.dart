import 'package:catalog_app/Widgets/routs.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/Images/login.png',
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text("Welcome",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
                        )),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter your username",
                          labelText: "Username",
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your name";
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please entera an password";
                        } else if (value.length < 8) {
                          return "password length should be atleast 8";
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: moveToHome,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 40 : 100,
                        height: 40,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text("login",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 40 : 8),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeroute);
                    //   },
                    //   child: Text("login",
                    //       style: TextStyle(
                    //           fontSize: 22, fontWeight: FontWeight.bold)),
                    //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void moveToHome() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
}
