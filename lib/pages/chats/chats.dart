import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<Map<String, String>> UserData  = [
    {
      "Name": "Mukesh",
      "father": "Chanwar Lal",
      "Add.": "Choukha"
    },
     {
      "Name": "Dinesh",
      "father": "Chanwar Lal",
      "Add.": "Choukha"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  //    backgroundColor: Colors.white,
  body: ListView(
    children: UserData.map((e) => 
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 200,
        color: Colors.red,
        child: Text('${e["Name"]}')
      ),
    ))
    .toList()
  )
    
    );
  }
}