import 'package:flutter/material.dart';

class NewsThreeToolbar extends StatelessWidget with PreferredSizeWidget {
  const NewsThreeToolbar(this.preferredSize, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(24, MediaQuery.of(context).viewPadding.top+16, 0, 0),
                child: Text(
                  "News 3",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 24,
                    color: Theme.of(context).primaryColor, 
                    fontWeight: FontWeight.bold ),
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.fromLTRB(0, 82 / 3, 4, 0),
            //   width: 32,
            //   height: 24,
            //   child: SvgPicture.asset('assets/toolbar/more.svg'),
            // )
          ],
        ),
      ),
    );
  }

  @override
  final Size preferredSize;
}