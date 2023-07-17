import 'package:flutter/material.dart';
import 'package:news_app/get_it/get_it.dart';
import 'package:news_app/global/texfield_component/textfiled_component.dart';
import 'package:news_app/screen/news_page/widgets/drawer_menu_widget.dart';
import 'package:news_app/screen/search/view_model/search_viewmodel.dart';
import 'package:news_app/screen/search/widgets/search_widget.dart';
import 'package:news_app/screen/search/widgets/search_widget_content.dart';

class SearchScreeNews extends StatefulWidget {
  const SearchScreeNews({super.key});

  @override
  State<SearchScreeNews> createState() => _SearchScreeNewsState();
}

class _SearchScreeNewsState extends State<SearchScreeNews> {
  @override
  void initState() {
    _searchViewModel.getNewsBySearch(q: 'global');
    super.initState();
  }

  final SearchViewModel _searchViewModel = getIt.get<SearchViewModel>();
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Search News'),
        ),
        drawer: DrawerMenuWidget(),
        body: Container(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchWidget(),
              ),
              _searchViewModel.textEditingController != null
                  ? SearchContent()
                  : SizedBox(),
            ],
          ),
        ),
      );
}
