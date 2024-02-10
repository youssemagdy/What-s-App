import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whats_app_copy/components/bottom_navigation.dart';
import 'package:whats_app_copy/components/chat_screen.dart';
import 'package:whats_app_copy/constants.dart';
import 'package:whats_app_copy/model/chatModel.dart';

import 'components/story_screen.dart';

class WhatsAppHome extends StatefulWidget
{
  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin
{
  late TabController _tabController;
  @override
  void initState()
  {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  @override
  void dispose()
  {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text('WhatsApp', style: TextStyle(color: Colors.white),),
        backgroundColor: mainColor,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined), color: Colors.white,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search_outlined), color: Colors.white,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert), color: Colors.white,),
        ],
      ),
      body: Container(
        child: const Column(
          children: [
            StoryScreen(),
            ChatsScreen(),
          ],
        ),
      ),
      floatingActionButton: BottomNavigation(tabController: _tabController),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
