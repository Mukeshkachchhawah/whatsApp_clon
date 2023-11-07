import 'package:flutter/material.dart';
import 'package:whatsapp_clon/pages/calls_page/calls.dart';
import 'package:whatsapp_clon/pages/chats/chats.dart';

import 'pages/bussions/bussions.dart';
import 'pages/stats/stats.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:  Colors.green
        
      ),
      title: "WhatsApp Clon",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp", style: TextStyle(fontSize: 25, color: Colors.white),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
            
          ],
          bottom: TabBar(
            tabs: [
            Icon(Icons.add_business_sharp),
          Text("Chats"),
             Text("States"),   Text("Call")
                    ]),
        ),
        body: TabBarView(children: [
          Bussions(),
          Chats(),
          States(),
          Calls()
        ]),
      ),
    );
  }
}