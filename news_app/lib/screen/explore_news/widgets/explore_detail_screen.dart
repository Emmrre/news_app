import 'package:flutter/material.dart';
import 'package:news_app/data/news/model/news_main_model.dart';
import 'package:news_app/get_it/get_it.dart';
import 'package:news_app/global/padding_extension/padding_extension.dart';
import 'package:news_app/results/result_state_widget.dart';
import 'package:news_app/screen/explore_news/view_model/explore_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_app/screen/web_view/screens/web_view_screen.dart';

class ExploreScreenDetail extends StatefulWidget {
  final String? query;
  const ExploreScreenDetail({super.key, required this.query});

  @override
  State<ExploreScreenDetail> createState() => _ExploreScreenDetailState();
}

class _ExploreScreenDetailState extends State<ExploreScreenDetail> {
  final ExploreViewModel _exploreViewModel = getIt.get<ExploreViewModel>();
  @override
  void initState() {
    _exploreViewModel.getNewsBySearch(q: this.widget.query);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(this.widget.query!),
        ),
        body: Observer(
          builder: ((context) => ResultStateWidget<NewsMainModel?>(
              resultState: _exploreViewModel.exploreNewsResultState,
              completed: _buildWidget)),
        ),
      );

  Widget _buildWidget(NewsMainModel? data) =>
      Padding(padding: context.globalAll16x, child: _buildNewsBySearch(data));

  Widget _buildNewsBySearch(NewsMainModel? data) {
    return Container(
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
    );
  }
}
