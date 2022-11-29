import 'package:flutter/material.dart';

class Contact_UI extends StatelessWidget {
  const Contact_UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contacts",style: TextStyle(fontSize: 25),),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("List of Contact",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),),
          ),
          ListTile(
              leading: const CircleAvatar(radius: 30,child: Icon(Icons.contacts_rounded, size: 35,),),
              title: const Text("Mark", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: const Text("+91 7536295124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          const Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: const CircleAvatar(radius: 30,child: Icon(Icons.contacts_rounded, size: 35,),),
              title: const Text("Sam", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: const Text("+91 7534655124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          const Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5,),
          ListTile(
              leading: const CircleAvatar(radius: 30,child: Icon(Icons.contacts_rounded, size: 35,),),
              title: const Text("John", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: const Text("+91 7537895124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          const Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: const CircleAvatar(radius: 30,child: Icon(Icons.contacts_rounded, size: 35,),),
              title: const Text("Daniel", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: const Text("+91 7534565124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          const Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: const CircleAvatar(radius: 30,child: Icon(Icons.contacts_rounded, size: 35,),),
              title: const Text("Micheal", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: const Text("+91 7531235124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          const Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: const CircleAvatar(radius: 30,child: Icon(Icons.contacts_rounded, size: 35,),),
              title: const Text("Justin", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: const Text("+91 7533215124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          const Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: const CircleAvatar(radius: 30,child: Icon(Icons.contacts_rounded, size: 35,),),
              title: const Text("Babar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: const Text("+91 7536545124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          const Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: const CircleAvatar(radius: 30,child: Icon(Icons.contacts_rounded, size: 35,),),
              title: const Text("Noel", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: const Text("+91 7539875124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
        ],
      ),
    );
  }
}