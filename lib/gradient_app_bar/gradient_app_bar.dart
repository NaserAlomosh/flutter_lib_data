import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

import '../view/home.dart';
import '../view/search.dart';

// flutter_gradient_app_bar 0.3.1
class TabAppbar extends StatefulWidget {
  const TabAppbar({super.key});

  @override
  TabAppbarState createState() => TabAppbarState();
}

class TabAppbarState extends State<TabAppbar>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(
      child: Text(
        'LEFT',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    Tab(
      child: Text(
        'RIGHT',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  ];

  int indexScreen = 0;
  List<Widget> screen = [
    const HomeView(),
    const SearchView(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: GradientAppBar(
          centerTitle: true,
          title: const Text('Title'),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF6D9886),
              Color(0xFF6D9886),
            ],
          ),
          bottom: TabBar(
            onTap: (value) {
              setState(() {
                indexScreen = value;
                print(value);
              });
            },
            tabs: myTabs,
          ),
        ),
        body: [
          const Center(
            child: Text('1'),
          ),
          const Center(
            child: Text('2'),
          ),
        ][indexScreen],
      ),
    );
  }
}
