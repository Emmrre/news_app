import 'package:flutter/material.dart';
import 'package:news_app/get_it/get_it.dart';
import 'package:news_app/global/texfield_component/textfiled_component.dart';
import 'package:news_app/screen/search/view_model/search_viewmodel.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final SearchViewModel _searchViewModel = getIt.get<SearchViewModel>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFieldComponent(
        controller: _searchViewModel.textEditingController,
        onChanged: (value) {
          _searchViewModel.textEditingController?.text = value;
          _searchViewModel.textEditingController?.selection =
              TextSelection.fromPosition(TextPosition(
                  offset: _searchViewModel.textEditingController!.text.length));
        },
        keyboardType: TextInputType.text,
        hintText: 'Seacrh News',
        onFieldSubmitted: (value) {
          _searchViewModel.myFocusNode?.requestFocus();
        },
        suffixIcon: Container(
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    _searchViewModel.textEditingController?.clear();
                    _searchViewModel.getNewsBySearch(q: 'global');
                  },
                  icon: Icon(Icons.highlight_remove_outlined)),
              IconButton(
                  onPressed: () {
                    _searchViewModel.getNewsBySearch(
                        q: _searchViewModel.textEditingController?.text);
                  },
                  icon: Icon(Icons.search))
            ],
          ),
        ),
      ),
    );
  }
}
