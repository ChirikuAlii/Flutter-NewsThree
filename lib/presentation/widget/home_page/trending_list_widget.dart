import 'package:flutter/material.dart';
import 'package:news_three/res/app_color.dart';

class TrendingListWidget extends StatefulWidget {
  const TrendingListWidget({Key? key}) : super(key: key);

  @override
  State<TrendingListWidget> createState() => _TrendingListWidgetState();
}

class _TrendingListWidgetState extends State<TrendingListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 324,
      child: ListView.builder(
        padding: EdgeInsets.only(right: 16),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.fromLTRB(24, 16, 0, 24),
            width: 308,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.greyZircon,
                      blurRadius: 10,
                      offset: Offset(2, 5))
                ]),
            child: Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Ukraine conflict: Kyiv braces for a Russian assault",
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(child: Text("World")),
                        Icon(Icons.access_time,color: Theme.of(context).textTheme.bodyMedium?.color,),
                        SizedBox(
                          width: 6,
                        ),
                        Text("1h ago")
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
