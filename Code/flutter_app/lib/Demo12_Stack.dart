import 'package:flutter/material.dart';

/**
 * 叠加
 */
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 231, 133, 228),
      ),
      child: Stack(
        // Aligment 的取值范围为 [-1, 1]，Stack 中心为 (0, 0)，
        // 这里设置为 (-0.5, -0.5) 后，可以让文本对齐到 Container 的 1/4 处
        alignment: const Alignment(-0.5, -0.5),
        children: <Widget>[
          Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
          ),
          Text('foobar'),
        ],
      ),
    );
  }
}
