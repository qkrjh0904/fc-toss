import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class TossAppBar extends StatefulWidget {
  static const double appBarHeight = 60;

  const TossAppBar({super.key});

  @override
  State<TossAppBar> createState() => _TossAppBarState();
}

class _TossAppBarState extends State<TossAppBar> {
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TossAppBar.appBarHeight,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          Image.asset(
            '$basePath/icon/toss.png',
            height: 30,
          ),
          emptyExpanded,
          Image.asset(
            '$basePath/icon/map_point.png',
            height: 30,
          ),
          width10,
          Tap(
            onTap: () {
              setState(() {
                _showRedDot = !_showRedDot;
              });
            },
            child: Stack(
              children: [
                Image.asset(
                  '$basePath/icon/notification.png',
                  height: 30,
                ),
                // 스택을 유지하면서 빨간색 점을 표현하기 위해
                if (_showRedDot)
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          width10,
        ],
      ),
    );
  }
}
