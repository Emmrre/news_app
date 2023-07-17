import 'package:flutter/material.dart';
import 'package:news_app/screen/explore_news/widgets/explore_detail_screen.dart';

class DrawerMenuWidget extends StatefulWidget {
  const DrawerMenuWidget({super.key});

  @override
  State<DrawerMenuWidget> createState() => _DrawerMenuWidgetState();
}

class _DrawerMenuWidgetState extends State<DrawerMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 50,
            child: DrawerHeader(
              child: Text('Top Categories'),
            ),
          ),
          ListTile(
            title: Text('Business'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ExploreScreenDetail(query: 'Business')),
              );
            },
          ),
          ListTile(
            title: Text('Entertainment'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ExploreScreenDetail(query: 'Entertainment')),
              );
            },
          ),
          ListTile(
            title: Text('General'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ExploreScreenDetail(query: 'General')),
              );
            },
          ),
          ListTile(
            title: Text('Health'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ExploreScreenDetail(query: 'Health')),
              );
            },
          ),
          ListTile(
            title: Text('Science'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ExploreScreenDetail(query: 'Science')),
              );
            },
          ),
          ListTile(
            title: Text('Sports'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ExploreScreenDetail(query: 'Sports')),
              );
            },
          ),
          ListTile(
            title: Text('Technology'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ExploreScreenDetail(query: 'Technology')),
              );
            },
          ),
        ],
      ),
    );
  }
}
