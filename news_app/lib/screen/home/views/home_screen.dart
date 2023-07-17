import 'package:flutter/material.dart';
import 'package:news_app/screen/explore_news/screen/explore_new.dart';
import 'package:news_app/screen/news_page/screen/headlines_screen.dart';
import 'package:news_app/screen/news_page/widgets/drawer_menu_widget.dart';
import 'package:news_app/screen/news_page/widgets/top_headlines_au.dart';
import 'package:news_app/screen/news_page/widgets/top_headlines_england.dart';
import 'package:news_app/screen/news_page/widgets/top_headlines_news_widget.dart';
import 'package:news_app/screen/news_page/widgets/top_headlines_turkey.dart';
import 'package:news_app/screen/search/screen/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
   HeadlineScreenNews(),
   SearchScreeNews(),
   ExploreNews(),

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        body:  Center(
        child: _widgetOptions.elementAt(_selectedIndex),
        ));
  }
}
