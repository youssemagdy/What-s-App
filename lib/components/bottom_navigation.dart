import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whats_app_copy/constants.dart';

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
            Tab(child: Icon(FontAwesomeIcons.solidCommentDots, size: 25,),),
            Tab(child: Icon(FontAwesomeIcons.userPlus, size: 25,),),
            Tab(child: Icon(FontAwesomeIcons.video, size: 25,),),
            Tab(child: Icon(FontAwesomeIcons.phoneAlt, size: 25,),),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
