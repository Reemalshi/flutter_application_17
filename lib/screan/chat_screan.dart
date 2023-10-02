import 'package:flutter/material.dart';
import 'package:flutter_application_17/model/chat_model.dart';

class ChatScrean extends StatelessWidget {
   ChatScrean({super.key});
  List<ChatModel> chats = [
    ChatModel(
      image: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      name: "reem",
      massage: "Hi, how are you"

    ),
    ChatModel(
      image: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      name: "reem2",
      massage: "Hi, how are you"

    ),
    ChatModel(
      image: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      name: "reem3",
      massage: "Hi, how are you"

    ),
    ChatModel(
      image: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      name: "reem4",
      massage: "Hi, how are you"

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index){
        return ListTile(
         
          leading: CircleAvatar(
            backgroundImage: NetworkImage(chats[index].image!),
          ),
          title: Text(chats[index].name!),
          subtitle: Text(chats[index].massage!),
          

        );
      },
      itemCount: chats.length,
      
      ) ,

    );
  }
}

