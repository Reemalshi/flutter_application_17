import 'package:flutter/material.dart';
import 'package:flutter_application_17/screan/chat_screan.dart';
import 'package:flutter_application_17/screan/sitting_screan.dart';
import 'package:flutter_application_17/screan/status_screan.dart';

class HomeScrean extends StatefulWidget {
  HomeScrean({super.key});
  //   List<Widget> screans = [
  //   ChatScrean(),
   
  // ];

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
       child: Scaffold(
        appBar: AppBar( 
          title: Text("WhatSapp"),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
              itemBuilder: (context) {
                return["Setting","Theme Mode"].map((e) {
                return PopupMenuItem(
                  child: Text(e),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SittingScrean(),));
                    // print(e);
                    // SittingScrean();

                    
                    
                  },
                );
                }).toList();
              },
              // offset: Offset(0, 15),
              offset: Offset(-20, 20),
               ),
          ],
          bottom: TabBar(
            // indicatorColor: Colors.black,
            // unselectedLabelColor: ,
               
            tabs: [
              Tab(
              icon: Icon(Icons.camera_alt),
            ),
              
            Tab(
              // icon: Icon(Icons.chat),
              text: "Chat",
              
            ),
            Tab(
              // icon: Icon(Icons.home),
              text: "Status",
            ),
            Tab(
              // icon: Icon(Icons.chat),
              text: "Calls",
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text("camera"),
          ),
        
          ChatScrean(),
          StatueScrean(),
          SittingScrean(),
          Center(
            child: Text("camera"),
          ),
          
        ]),
       ),
       );
  }
}