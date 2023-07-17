import 'package:flutter/material.dart';
import 'package:news_app/screen/news_page/widgets/drawer_menu_widget.dart';
import 'package:news_app/screen/news_page/widgets/top_headlines_au.dart';
import 'package:news_app/screen/news_page/widgets/top_headlines_england.dart';
import 'package:news_app/screen/news_page/widgets/top_headlines_news_widget.dart';
import 'package:news_app/screen/news_page/widgets/top_headlines_turkey.dart';

class HeadlineScreenNews extends StatefulWidget {
  const HeadlineScreenNews({super.key});

  @override
  State<HeadlineScreenNews> createState() => _HeadlineScreenNewsState();
}

class _HeadlineScreenNewsState extends State<HeadlineScreenNews> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Top Headlines')),
        drawer: DrawerMenuWidget(),
        body: ListView(
          children: [
            Flexible(child: TopHeadlines()),
            Flexible(child: TopHeadlinesGB()),
            Flexible(child: TopHeadlinesTR()),
            Flexible(child: TopHeadlinesAu()),
          ],
        ),
      );
}
