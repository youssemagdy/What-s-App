import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whats_app_copy/constants.dart';

class ButtonSendNavigation extends StatefulWidget
{
  @override
  State<ButtonSendNavigation> createState() => _ButtonSendNavigationState();
}

class _ButtonSendNavigationState extends State<ButtonSendNavigation> with SingleTickerProviderStateMixin
{
  TextEditingController _sendMessageController = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: TextField(
                        cursorColor: Colors.black,
                        controller: _sendMessageController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type Here',
                          icon: Icon(FontAwesomeIcons.smileWink, color: Colors.grey, size: 28,),
                          suffixIcon: Icon(FontAwesomeIcons.paperclip, color: Colors.grey, size: 26,),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 12),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20), topRight: Radius.circular(20)),
                    ),
                    child: const Icon(FontAwesomeIcons.microphone, color: Colors.grey, size: 27,),
                  ),
                  const SizedBox(width: 7,),
                  Container(
                    padding: const EdgeInsets.only(right: 5),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: mainColor,
                    ),
                    child: const Icon(FontAwesomeIcons.solidPaperPlane, color: Colors.white, size: 22,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }}
