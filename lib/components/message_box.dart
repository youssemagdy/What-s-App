import 'package:flutter/material.dart';
import 'package:whats_app_copy/constants.dart';
import 'package:whats_app_copy/model/message_model.dart';

class MessageBox extends StatelessWidget
{
  final String message;
  final bool isMe;
  const MessageBox({Key? key, required this.message, required this.isMe}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    if(isMe)
    {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Container(
                  decoration: BoxDecoration(
                    color: mainColor.withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(message,style: TextStyle(fontSize: 14),),
                  )
              ),
            )
          ],
        ),
      );
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(message,style: const TextStyle(fontSize: 14),),
                  )
              ),
            )
          ],
        ),
      );
    }
  }
}
