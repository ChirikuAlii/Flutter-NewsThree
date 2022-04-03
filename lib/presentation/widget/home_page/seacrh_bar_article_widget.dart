import 'package:flutter/material.dart';

class SearchBarArticleWidget extends StatefulWidget {
  TextEditingController searchEditController ;
  SearchBarArticleWidget({Key? key,required TextEditingController this.searchEditController}) : super(key: key);

  @override
  State<SearchBarArticleWidget> createState() => _SearchBarArticleWidgetState();
}

class _SearchBarArticleWidgetState extends State<SearchBarArticleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).backgroundColor),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            size: 24,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextField(
              controller: widget.searchEditController,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Search Article"),
            ),
          ),
        ],
      ),
    );
  }
}
