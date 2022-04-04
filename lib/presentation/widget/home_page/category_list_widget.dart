
import 'package:flutter/material.dart';
import 'package:news_three/presentation/model/category_news.dart';
import 'package:news_three/res/app_theme.dart';

class CategoryListWidget extends StatefulWidget {

  CategoryNews categoryNews;

  
  CategoryListWidget({Key? key,required this.categoryNews}) : super(key: key);

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  late CategoryArticleTheme _theme;
  @override
  void initState() {
    _theme = CategoryArticleTheme(context);
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 80
      ),
      child: widget.categoryNews.isSelected ?
      Container(
        margin: const EdgeInsets.only(right: 8),                  
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: _theme.selectedBackground()
          ),
          child:  Center(child: Text(
            widget.categoryNews.title,
            style: TextStyle(color: _theme.selectedText() ),)) 
          ) 
          :
    Container(
        margin: const EdgeInsets.only(right: 8),                  
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Theme.of(context).backgroundColor
          ),
          child: Center(child: Text(widget.categoryNews.title)) 
          ) 
    );
  }
}