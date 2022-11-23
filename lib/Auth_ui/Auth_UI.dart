import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: Auth_UI(),
  ));
}

class Auth_UI extends StatefulWidget {
  const Auth_UI({super.key});

  @override
  State<Auth_UI> createState() => _Auth_UIState();
}

class _Auth_UIState extends State<Auth_UI> {
  //final String bacimage = 'https://images.unsplash.com/photo-1524602997322-c1900e093d3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80';
  late bool formVisible;
  int? _formIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1524602997322-c1900e093d3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80'),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Container(
              color: Colors.black54,
              child: Column(
                children: [
                  const SizedBox(height: kToolbarHeight + 40),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Welcome to this awesome login app. \n You looking Happy.",
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Expanded(
                          child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            formVisible = true;
                            _formIndex = 1;
                          });
                        },
                        child: const Text("Login"),
                      )),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade700,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )),
                          child: const Text(
                            "Signup",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            setState(() {
                              formVisible = true;
                              _formIndex = 2;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 10.0),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.google),
                    label: const Text(
                      "Continue with Google",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: (!formVisible)
                  ? null
                  : Container(
                color: Colors.black54,
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _formIndex == 1
                                ? Colors.red
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: _formIndex == 1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _formIndex = 1;
                            });
                          },
                        ),
                        const SizedBox(width: 10.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _formIndex == 2
                                ? Colors.red
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          child: Text("Signup",
                              style: TextStyle(
                                color: _formIndex == 2
                                    ? Colors.white
                                    : Colors.black,
                              )),
                          onPressed: () {
                            setState(() {
                              _formIndex = 2;
                            });
                          },
                        ),
                        const SizedBox(width: 10.0),
                        IconButton(
                          color: Colors.white,
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            setState(() {
                              formVisible = false;
                            });
                          },
                        )
                      ],
                    ),
                    Container(
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child:
                        _formIndex == 1 ? const LoginForm() : const SignupForm(),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ));
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter email",hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter email",hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Confirm password",hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text(
              "Signup",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
