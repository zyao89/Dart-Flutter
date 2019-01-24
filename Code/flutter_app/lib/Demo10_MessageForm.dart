import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MessageForm(),
      ),
    );
  }
}

class MessageForm extends StatefulWidget {
  @override
  State createState() {
    return _MessageFormState();
  }
}

class _MessageFormState extends State<MessageForm> {
  var editController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // 占满一行里除 RaisedButton 外的所有空间
        Expanded(
          child: TextField(
            controller: editController,
          ),
        ),
        RaisedButton(
            child: Text("Submit"),
            onPressed: () {
              showDialog(
                // 第一个 context 是参数名，第二个 context 是 State 的成员变量
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      // dialog 的内容
                      content: Text(editController.text),
                      // actions 设置 dialog 的按钮
                      actions: <Widget>[
                        FlatButton(
                          child: Text('OK'),
                          // 用户点击按钮后，关闭弹框
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    );
                  }
              );
            }
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    editController.dispose();
  }
}
