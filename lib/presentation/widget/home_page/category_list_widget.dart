
import 'package:flutter/material.dart';
import 'package:news_three/presentation/model/category_news.dart';

class CategoryListWidget extends StatefulWidget {

  CategoryNews categoryNews;

  
  CategoryListWidget({Key? key,required this.categoryNews}) : super(key: key);

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 80
      ),
      child: Container(
        margin: const EdgeInsets.only(right: 8),                  
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Theme.of(context).backgroundColor 
          ),
          child: widget.categoryNews.isSelected ? Center(child: Text(widget.categoryNews.title)) : Center(child: Text("tidak di pilih")),
          ),
    );
  }
}