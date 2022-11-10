import 'package:flutter/material.dart';

class Settingss extends StatefulWidget {

  @override
  State<Settingss> createState() => _SettingsState();
}

class _SettingsState extends State<Settingss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
    );
  }
}
