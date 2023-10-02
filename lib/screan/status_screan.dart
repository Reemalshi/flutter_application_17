import 'package:flutter/material.dart';
import 'package:flutter_application_17/model/chat_model.dart';

class StatueScrean extends StatelessWidget {
   StatueScrean({super.key});
  List<ChatModel> statuses = [
    ChatModel(
      image: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      name: "reem",
      date: "today 1:40 Pm"

    ),
    ChatModel(
      image: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      name: "reem2",
     date: "today 1:40 Pm"

    ),
    ChatModel(
      image: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      name: "reem3",
      date: "today 1:40 Pm"

    ),
    ChatModel(
      image: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      name: "reem4",
      date: "today 1:40 Pm"

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Row(
        children: [

         ListView.builder(itemBuilder: (context, index){
          return ListTile(
           
            leading: CircleAvatar(
              backgroundImage: NetworkImage(statuses[index].image!),
            ),
            title: Text(statuses[index].name!),
            subtitle: Text(statuses[index].date!),
            trailing: PopupMenuButton(
              itemBuilder: (context) {
                return["Setting","Theme Mode"].map((e) {
                return PopupMenuItem(
                  child: Text(e),
                  onTap: () {
                    print(e);
                  },
                );
                }).toList();
              },
              offset: Offset(0, 15),
              // offset: Offset(-20, 20),
               ),
      
          );
          
        },
        itemCount: statuses.length,
        
        ),
        ],
      ) ,

    );
  }
}

