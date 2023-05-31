import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Column(children: [
              const Image(
                image: AssetImage('assets/images/login.png'),
                height: 250,
              ),
              const Text(
                "Login",
                style: TextStyle(
                    fontFamily: 'Righteous',
                    fontSize: 30,
                    color: Color(0xFFA931E6)),
              ),
              const Text(
                "Hello let's login to your account",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF8F8F8F),
                    fontSize: 10),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width >= 600
                    ? MediaQuery.of(context).size.width / 1.5
                    : MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Email Address'),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
