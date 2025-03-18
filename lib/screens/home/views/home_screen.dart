import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/screens/home/views/main_screen.dart';
import 'package:music_app/screens/stats/stats.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var widgetList = [
    MainScreen(),
    StatScreen()
  ];
  int index = 0;
  late Color selectedItem = Theme.of(context).colorScheme.primary;
  Color unSelectedItem = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30)
        ),
        child: BottomNavigationBar(
            onTap: (value){
              setState(() {
                index = value;
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 3,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home, color: index == 0 ? selectedItem : unSelectedItem,),
                  label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      CupertinoIcons.graph_square_fill,
                      color: index == 1 ? selectedItem : unSelectedItem
                  ),
                  label: "Stats"
              ),
            ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        shape: const CircleBorder(),

        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
              ],
              transform: const GradientRotation(pi/4)
            )
          ),
          child: Icon(CupertinoIcons.add),
        )
      ),
      body: index == 0 ? MainScreen() : StatScreen()
    );
  }
}
