import 'package:flutter/material.dart';

import '../constants.dart';

class BottomNavigation extends StatelessWidget
{
  const BottomNavigation({Key? key, required TabController tabController,})
      :_tabController = tabController, super(key : key);
  final TabController _tabController;
  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: BorderRadius.all(containerRadius),
      child: Container(
        width: MediaQuery.of(context).size.width/1.5,
        height: MediaQuery.of(context).size.height/18,
        color: mainColor,
        child: TabBar(
          tabs: const [
            Tab(child: Icon(Icons.comment, size: 25, color: Colors.white),),
            Tab(child: Icon(Icons.person_add_alt_1, size: 25,color: Colors.white),),
            Tab(child: Icon(Icons.videocam_rounded, size: 25,color: Colors.white),),
            Tab(child: Icon(Icons.call_outlined, size: 25, color: Colors.white,),),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
