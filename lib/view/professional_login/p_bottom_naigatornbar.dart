import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:learning_stud/view/game.dart';
import 'package:learning_stud/view/home_notification.dart';
import 'package:learning_stud/view/home_screen.dart';

import 'package:learning_stud/view/professional_login/p_game.dart';
import 'package:learning_stud/view/professional_login/p_home.dart';
import 'package:learning_stud/view/professional_login/p_home_notification.dart';
import 'package:learning_stud/view/professional_login/p_profilescreen.dart';
import 'package:learning_stud/view/profile_screen.dart';

class ProfBottomBar extends StatefulWidget {
  const ProfBottomBar({super.key});

  @override
  State<ProfBottomBar> createState() => _ProfBottomBarState();
}

class _ProfBottomBarState extends State<ProfBottomBar> {
  int index=0;
  final bottomnavigationkey=GlobalKey<CurvedNavigationBarState>();
  List screenlist=[
    ProfHomeScreen(),
    ProfHomeNotification(),
    ProfGameScreen(),
    ProfProfileScreen()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //extendBody: true,
      body: screenlist[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        
      //backgroundColor: Colors.white70,
         color: Color.fromRGBO(48, 54, 124, 1),
        animationDuration: Duration(milliseconds: 300),
        key: bottomnavigationkey,
        onTap: (index) {
          setState(() {
            this.index=index;
          });
        },
        items: [
          Icon(Icons.home,
          color: Colors.white,
          size: 40,
          ),
          Icon(Icons.notifications,
          color: Colors.white,
          size: 40,
          ),
          Icon(Icons.games,
          color: Colors.white,
          size: 40,
          ),
          Icon(Icons.person,
          color: Colors.white,
          size: 40,
          )

        ],
      ),
    );
  }
}