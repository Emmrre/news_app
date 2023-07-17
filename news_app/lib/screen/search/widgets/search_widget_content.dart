import 'package:flutter/material.dart';
import 'package:news_app/data/news/model/news_main_model.dart';
import 'package:news_app/get_it/get_it.dart';
import 'package:news_app/global/padding_extension/padding_extension.dart';
import 'package:news_app/results/result_state_widget.dart';
import 'package:news_app/screen/search/view_model/search_viewmodel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_app/screen/web_view/screens/web_view_screen.dart';

class SearchContent extends StatefulWidget {
  const SearchContent({super.key});

  @override
  State<SearchContent> createState() => _SearchContentState();
}

class _SearchContentState extends State<SearchContent> {
  final SearchViewModel _searchViewModel = getIt.get<SearchViewModel>();
  @override
  Widget build(BuildContext context) => Observer(
        builder: ((context) => ResultStateWidget<NewsMainModel?>(
            resultState: _searchViewModel.searchNewsResultState,
            completed: _buildWidget)),
      );

  Widget _buildWidget(NewsMainModel? data) =>
      Padding(padding: context.globalAll16x, child: __buildNewsBySearch(data));

  Widget __buildNewsBySearch(NewsMainModel? data) {
    return Container(
      height: 600.0,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      child: Container(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: data?.articles?.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WebViewScreen(
                            initialUrl: data?.articles?[index].url,
                            appbarTitle: data?.articles?[index].author,
                          )),
                );
              },
                child: Card(
                    child: Column(
                  children: [
                    Container(
                      height: 180.0,
                      width: 300,
                      child:
                          Image.network(data?.articles?[index].urlToImage ?? '',
                              errorBuilder: (context, error, stackTrace) => Icon(
                                    Icons.error_outline,
                                    color: Colors.grey,
                                  )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          width: 300,
                          child: Text(data?.articles?[index].author ?? '')),
                    ),
                    Divider(),
                    SizedBox(
                        width: 300,
                        child: Text(data?.articles?[index].title ?? '')),
                  ],
                )),
              );
            }),
      ),
    );
  }
}
