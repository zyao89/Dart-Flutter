import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(4.0),
      width: 80.0,
      decoration: BoxDecoration(
        // 背景色
        color: Colors.black,
        // 圆角
        borderRadius: BorderRadius.circular(5.0),
      ),

      // 把文本放在 Container 的中间
      child: Center(
        child: Text(
            'text',
            style: TextStyle(
              color: Colors.green,
              // 下划线
              decoration: TextDecoration.none,
            ),
        ),
      ),
    );
  }
}
