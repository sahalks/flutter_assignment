import 'package:flutter/material.dart';
class CheckBoxx extends StatefulWidget {
  const CheckBoxx({Key? key}) : super(key: key);

  @override
  State<CheckBoxx> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxx> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Check Box"),
      ),
      body: Center(
        child: Checkbox(
          value: isChecked,
          onChanged: (value){
            setState(() {
              isChecked = value!;
            });
        }
        ),
      ),
    );
  }
}
