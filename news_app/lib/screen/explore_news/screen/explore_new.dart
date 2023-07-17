import 'package:flutter/material.dart';
import 'package:news_app/get_it/get_it.dart';
import 'package:news_app/screen/explore_news/view_model/explore_view_model.dart';
import 'package:news_app/screen/explore_news/widgets/explore_detail_screen.dart';
import 'package:news_app/screen/news_page/widgets/drawer_menu_widget.dart';

class ExploreNews extends StatefulWidget {
  const ExploreNews({super.key});

  @override
  State<ExploreNews> createState() => _ExploreNewsState();
}

class _ExploreNewsState extends State<ExploreNews> {
  final ExploreViewModel _exploreViewModel = getIt.get<ExploreViewModel>();
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: DrawerMenuWidget(),
        appBar: AppBar(title: Text('Explore News')),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
          ),
          child: GridView.builder(
              itemCount: _exploreViewModel.exploreList.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExploreScreenDetail(
                              query: _exploreViewModel.exploreList[index])),
                    );
                  },
                  child: Card(
                    child: Center(
                        child:
                            Text(_exploreViewModel.exploreList[index] ?? '')),
                  ),
                );
              }),
        ),
      );
}
