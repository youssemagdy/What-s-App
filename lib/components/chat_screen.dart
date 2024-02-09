import 'package:flutter/material.dart';
import 'package:whats_app_copy/constants.dart';
import 'package:whats_app_copy/model/chatModel.dart';

class ChatsScreen extends StatelessWidget
{
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: containerRadius),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 8, right: 9, top: 10),
          child: ListView.builder(
            itemCount: dummyData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(dummyData[i].avatarUrl),
                    radius: 26,
                    child: dummyData[i].online?
                    Container(
                      margin: const EdgeInsets.only(bottom: 40, right: 40),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 2,
                              color: Colors.white
                          )
                      ),
                    ):
                    Container(),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dummyData[i].name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        dummyData[i].time,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          if(dummyData[i].seen)
                            Icon(Icons.done_all, size: 18, color: Colors.blue[600],),
                          const SizedBox(width: 5,),
                          Expanded(
                            child: Text(
                              dummyData[i].message,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          if(dummyData[i].seen)
                            Container(
                              height: 15,
                              width: 15,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: const Align(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(height: 1, indent: 70, endIndent: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
