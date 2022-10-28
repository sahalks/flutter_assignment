import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View"),
      ),
      body: ListView(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Text("List of Contact",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),)
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts_rounded, size: 35,),radius: 30,),
            title: Text("Contact 1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            subtitle: Text("7536295124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: CircleAvatar(child: Icon(Icons.contacts_rounded, size: 35,),radius: 30,),
              title: Text("Contact 2", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: Text("7534655124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5,),
          ListTile(
              leading: CircleAvatar(child: Icon(Icons.contacts_rounded, size: 35,),radius: 30,),
              title: Text("Contact 3", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: Text("7537895124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: CircleAvatar(child: Icon(Icons.contacts_rounded, size: 35,),radius: 30,),
              title: Text("Contact 4", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: Text("7534565124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: CircleAvatar(child: Icon(Icons.contacts_rounded, size: 35,),radius: 30,),
              title: Text("Contact 5", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: Text("7531235124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: CircleAvatar(child: Icon(Icons.contacts_rounded, size: 35,),radius: 30,),
              title: Text("Contact 6", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: Text("7533215124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: CircleAvatar(child: Icon(Icons.contacts_rounded, size: 35,),radius: 30,),
              title: Text("Contact 7", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: Text("7536545124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
          Divider(color: Colors.black,thickness: 1,endIndent: 20,indent: 20,height: 5),
          ListTile(
              leading: CircleAvatar(child: Icon(Icons.contacts_rounded, size: 35,),radius: 30,),
              title: Text("Contact 8", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: Text("7539875124", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Wrap(children: [IconButton(onPressed: (){},icon: const Icon(Icons.phone,size: 30,color: Colors.green,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded,size: 30,color: Colors.blue,))])
          ),
        ],
      ),
    );
  }
}