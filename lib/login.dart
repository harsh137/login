import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _passCtrl = TextEditingController();
  @override
  bool _ispassVisible = true;
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: Image.asset(
                  "assets/logo.png",
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xff11459e)),
              ),
              SizedBox(
                height: 4,
              ),
              Divider(
                color: Color(0xff11459e),
                height: 20,
                thickness: 5,
                indent: 60,
                endIndent: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 10,
                shadowColor: Colors.blue[200],
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailCtrl,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    labelText: "Email Address",
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Material(
                elevation: 10,
                shadowColor: Colors.blue[200],
                child: TextField(
                  obscureText: _ispassVisible,
                  controller: _passCtrl,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _ispassVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _ispassVisible = !_ispassVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff11459e), // Background color
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                      onPressed: () {}, child: Text("Forget Password?"))),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.grey,
                height: 40,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
