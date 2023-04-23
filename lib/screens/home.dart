import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/calling.dart';
import '../widgets/chats.dart';
import '../widgets/states.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(child: Text("Business tools")),
                        PopupMenuItem(child: Text("New group")),
                        PopupMenuItem(child: Text("New broadcast")),
                        PopupMenuItem(child: Text("Linked devices")),
                        PopupMenuItem(child: Text("Starred messages")),
                        PopupMenuItem(child: Text("Setting"))
                      ]),
            ],
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.camera_alt_rounded,
                ),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ]),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.black,
              ),
              Chates(),
              States(),
              Calling()
            ],
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   child: Icon(Icons.add),
          // ),
        ));
  }
}
