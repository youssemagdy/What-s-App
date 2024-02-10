import 'package:flutter/material.dart';
import 'package:whats_app_copy/components/buttom_send_navigt.dart';
import 'package:whats_app_copy/model/chatModel.dart';
import 'package:whats_app_copy/model/message_model.dart';

import 'message_box.dart';

class ConversationScreen extends StatelessWidget
{
  final String username , profilpic, time;
  const ConversationScreen
  ({
      Key? key,
      required this.username,
      required this.profilpic,
      required this.time,
      required this.online
  }) : super(key: key);
  final bool online;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black.withOpacity(0.6),),
          ),
        ),
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(profilpic),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(username, style: const TextStyle(fontSize: 16,),),
                online? Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 1),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 3,),
                    const Text('Active Now', style: TextStyle(color: Colors.grey, fontSize: 12,),),
                  ],
                ): Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12),),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.videocam,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.call_outlined,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          color: Colors.white,
          child: ListView(
            children:
              List.generate(
                messages.length,
                  (index) {
                  return MessageBox(
                    isMe: messages[index]['isMe'],
                    message: messages[index]['message'],
                  );
                  }
              ),
          ),
        ),
      ),
      bottomSheet: ButtonSendNavigation(),
    );
  }
}
