import 'package:flutter/material.dart';
import 'package:flutter_application_17/model/chat_model.dart';

class SittingScrean extends StatelessWidget {
   SittingScrean({super.key});
  List<ChatModel> sitting =[
    ChatModel(
      image: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      name: "reem",
      massage: "Hi, how are you"

    ),
    ChatModel(
      name: "Chat",
      massage: "................."
    ),
     ChatModel(
      name: "Nativication",
      massage: "................."
    ),
     ChatModel(
      name: "Storage and data",
      massage: "................."
    ),
     ChatModel(
      name: "Help",
      massage: "................."
    ),
     ChatModel(
      name: "invite a friend",
      massage: "................."
    ),

  ];
  
  get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        children: [
          Card(
            // child: Expanded(
            //   // child: ListView.builder(
            //   //   shrinkWrap: true,
            //   //   itemCount: sitting.length,
            //   //   itemBuilder: (context, index) {
            //   //     return ListTile(
            //   //       leading: CircleAvatar(
            //   //         backgroundImage: NetworkImage(sitting[index].image!),
            //   //       ),
            //   //       title: Text(sitting[index].name!),
            //   //       subtitle: Text(sitting[index].massage!),
            //   //     );
            //   //   },
            //   // ),
            // ),
          ),
          
          Container(
            height: 200,
            child: Column(
              children: [
                ListView.builder(
                shrinkWrap: true,
                itemCount: sitting.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(sitting[index].image!),
                    ),
                    title: Text(sitting[index].name!),
                    subtitle: Text(sitting[index].massage!),
                  );
                  
                },
                
              ),
              

                  
              ],
            ),
          ),
        ],
      ),
    );
  }
}