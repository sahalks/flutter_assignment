import 'package:flutter/material.dart';
import 'package:flutter_assignment/Signup.dart';
import 'package:flutter_assignment/home.dart';

class LoginWithValidation extends StatefulWidget{

  const LoginWithValidation({super.key});

  @override
  State<LoginWithValidation> createState() => _LoginWithValidationState();
}

class _LoginWithValidationState extends State<LoginWithValidation> {
  var formkey = GlobalKey<FormState>();
  bool _passView = true;
  get passController => null;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page"), centerTitle: true,),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const Center(child: Text("Login Page", style: TextStyle( fontStyle: FontStyle.italic, fontSize: 20, fontWeight: FontWeight.w700))),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27)
                    ),
                    labelText: 'Email'
                  ),
                  validator: (text){
                    if (text!.isEmpty || !text.contains('@')){
                      return ("enter valid email");
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  controller: passController,
                  obscureText: _passView,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27)
                    ),
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

                  ),
                  validator: (pass){
                    if(pass!.isEmpty || pass.length <6 ){
                      return ("Enter valid password");
                    }
                    return null;
                  },
                ),
              ),
              Center(child: TextButton(onPressed: (){}, child: const Text("Forgot Password?")),),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(onPressed: (){
                 final valid = formkey.currentState!.validate();
                 if(valid){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                 }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ), child: const Text("Login", style: TextStyle(fontSize: 20 ),),),
              ),
              Center(child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup()));
              }, child: const Text("New user? Sign Up"))),
            ],
          ),
        ),
      ),
    );
  }
}
