import 'package:flowershopping/main.dart';
import 'package:flowershopping/screen/community_screen.dart';
import 'package:flowershopping/screen/explore_screen.dart';
import 'package:flowershopping/screen/notification_screen.dart';
import 'package:flowershopping/screen/profile_screen.dart';
import 'package:flowershopping/screen/saved_screen.dart';
import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

ColorIconText disabledIcon = ColorIconText();

class BottomNavigation extends StatefulWidget {
  @override
  State createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  List<Widget> _children = [
    ExploreScreen(),
    SavedScreen(),
    Community(),
    MyCommunity(),
    UserProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    print(index);
  }

  final List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(
        title: Text(
          'Explore',
          style: TextStyle(fontSize: 12),
        ),
        icon: LineAwesomeIcons.home),
    TitledNavigationBarItem(
        title: Text(
          'Saved',
          style: TextStyle(fontSize: 12),
        ),
        icon: Icons.favorite_border),
    TitledNavigationBarItem(
        title: Text(
          'Community',
          style: TextStyle(fontSize: 12),
        ),
        icon: LineAwesomeIcons.comment),
    TitledNavigationBarItem(
        title: Text(
          'Notification',
          style: TextStyle(fontSize: 12),
        ),
        icon: LineAwesomeIcons.bell),
    TitledNavigationBarItem(
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 12),
        ),
        icon: LineAwesomeIcons.user),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: TitledBottomNavigationBar(
        onTap: (index) => _onItemTapped(index),
        currentIndex: _currentIndex,
        items: items,
        activeColor: Theme.of(context).accentColor,
        inactiveColor: disabledIcon.disabledIcon,
      ),
    );
  }
}
