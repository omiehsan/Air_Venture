import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hawai_jubu/src/view/navigations/search_bar/search_screen.dart';
import '../../_screen/contact_us/contact_us.dart';
import '../../_screen/dashboard/dashboard.dart';
import '../../_screen/more_views/more_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const DashBoard(),
    const SearchScreen(),
    const ContactUs(),
    const MoreView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white54,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.purple.shade800,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined),
            activeIcon: Icon(Icons.add_circle_outlined),
            label: 'Top-up',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          // BottomNavigationBarItem(
          //     icon: Image.asset('assets/images/icon/more.png',height: 40,),
          //     activeIcon: Image.asset('assets/images/icon/morefilled.png',height: 40),
          //     label: "More"),
        ],
      ),
    );
  }
}
