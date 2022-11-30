import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Signup.dart';
import 'Login.dart';


class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Welcome!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
              const Text(
                'Automatic identity verification which enable you to verify your identity',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              Image.asset(
                'assets/images/studying.png',
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  LoginPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: const Text('Login'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()));
                        },
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                            backgroundColor: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: const Text('Register'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}