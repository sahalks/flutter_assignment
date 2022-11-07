import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lottiee extends StatefulWidget {
  const Lottiee({Key? key}) : super(key: key);

  @override
  State<Lottiee> createState() => _LottieeState();
}

class _LottieeState extends State<Lottiee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LottieBuilder.network('https://assets1.lottiefiles.com/packages/lf20_yyhcf6hn.json'),
      ),
    );
  }
}
