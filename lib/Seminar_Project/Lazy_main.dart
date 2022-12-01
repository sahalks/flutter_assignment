import 'package:flutter/material.dart';
import 'package:flutter_assignment/Seminar_Project/Lazy_Loading.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';


void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LazyLoading(),
  ));
}