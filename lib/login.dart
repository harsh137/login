import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passCtrl = TextEditingController();
  bool _ispassVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50, bottom: 50),
                child: Image.asset(
                  "assets/logo.png",
                  height: 200,
                  width: 200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xff11459e)),
              ),
              const SizedBox(
                height: 4,
              ),
              const Divider(
                color: Color(0xff11459e),
                height: 20,
                thickness: 5,
                indent: 60,
                endIndent: 60,
              ),
              const SizedBox(
                height: 10,
              ),
              Material(
                elevation: 10,
                shadowColor: Colors.blue[200],
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailCtrl,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    labelText: "Email Address",
                  ),
                ),
              ),
              const SizedBox(
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
                        setState(() {
                          _ispassVisible = !_ispassVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff11459e), // Background color
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                      onPressed: () {}, child: const Text("Forget Password?"))),
              const SizedBox(
                height: 20,
              ),
              const Divider(
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
