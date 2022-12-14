import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _Signup();
}

class _Signup extends State<Signup>{
  bool _passView = true;
  bool _confirmpassView = true;
  TextEditingController emailController   = TextEditingController();
  TextEditingController passController    = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup with validation'),
      ),
      body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'Sign Up Page',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_rounded),
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Enter valid email';
                    } else {
                      return null;
                    }
                  },
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passController,
                  obscureText: _passView,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_person_rounded),
                      suffixIcon: IconButton(
                        tooltip: 'Password visibility',
                        onPressed: () {
                          setState(() {
                            _passView ? _passView = false : _passView = true;
                          });
                        },
                        icon: _passView
                            ? const Icon(Icons.remove_red_eye_rounded)
                            : const Icon(Icons.visibility_off_rounded),
                      ),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Password must be greater than 6 in length';
                    } else {
                      return null;
                    }
                  },
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: confirmController,
                  obscureText: _confirmpassView,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_person_rounded),
                      suffixIcon: IconButton(
                        tooltip: 'Password visibility',
                        onPressed: () {
                          setState(() {
                            _confirmpassView
                                ? _confirmpassView = false
                                : _confirmpassView = true;
                          });
                        },
                        icon: _confirmpassView
                            ? const Icon(Icons.remove_red_eye_rounded)
                            : const Icon(Icons.visibility_off_rounded),
                      ),
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) {
                    if (value!.isEmpty ||
                        passController.text != confirmController.text) {
                      return 'Passwords does not match';
                    } else {
                      return null;
                    }
                  },
                  textInputAction: TextInputAction.done,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: MaterialButton(
                    height: 45,
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      final isValid = formKey.currentState!.validate();
                      if (isValid) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  LoginPage()));
                      } else {
                        Fluttertoast.showToast(
                            msg: 'Signup failed',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM);
                      }
                    },
                    child: const Text('Sign Up'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()));
                    },
                    child: const Text('Already signed up? Login'))
              ],
            ),
          )),
    );
  }
}