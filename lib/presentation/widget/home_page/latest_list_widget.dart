import 'package:flutter/material.dart';

class LatestListWidget extends StatefulWidget {
  const LatestListWidget({Key? key}) : super(key: key);

  @override
  State<LatestListWidget> createState() => _LatestListWidgetState();
}

class _LatestListWidgetState extends State<LatestListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 0, 0, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 116,
            //color: Colors.green,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Crypto"),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Data breakdown: How to Ride Dips",
                  maxLines: 2,
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text("16h ago")
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(child: Container()),
          Container(
            decoration: const BoxDecoration(
                //color: Colors.white
                ),
            child: Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
