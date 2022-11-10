import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bottom Sheet"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(onPressed: () => _show(context),child: const Icon(Icons.add,size: 35,),backgroundColor: Colors.black,),
    );
  }
}
_show(BuildContext context){
    return _show(context)(
      context: context,
      builder: (context){
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "Name"),
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Age"),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text("Submit"))
            ],
          ),
        );
      }
    );
}

