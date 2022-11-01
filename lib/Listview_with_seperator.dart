import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: ListWithSeperated (),
      ));
}

class ListWithSeperated extends StatelessWidget{

  var datas  = <String> ['Data 1','Data 2','Data 3'];
  var colors = <int> [600, 300, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My List"),),
      body: ListView.separated(itemBuilder: (context, index){
        return Card(
          color: Colors.green[colors[index]],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(datas[index]),
          ),
        );
      },
          separatorBuilder: (context,index){
        return Divider( );
          },
          itemCount: datas.length),
    );
  }


}