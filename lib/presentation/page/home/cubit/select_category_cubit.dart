import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_three/presentation/model/category_news.dart';

class SelectCategoryCubit extends Cubit<CategoryNews> {
  SelectCategoryCubit()
      : super(CategoryNews(title: "title", isSelected: false));

  void select(String title) {
    emit(CategoryNews(title: title, isSelected: !state.isSelected));
  }
}
