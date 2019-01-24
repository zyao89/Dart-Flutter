import 'dart:html';
import 'dart:js';

class Libs {
  Element _btn;
  var _jsMap;

  Libs() {
    print('I am lib.dart');
    querySelector("#VueContainer").style.display = "block";
    _btn = querySelector("#Btn");
    init();
  }

  init() {
    print('lib.dart init');

    final opts = {
      'el': '#app',
      'data': {
        'message': 'hello world !!!',
      },
      'methods': {
        'handleClick': JsFunction.withThis((obj, [event]) {
          print('我触发了点击事件!');
          context.callMethod('alert', ['Hello World']);
        })
      },
    };
    _jsMap = new JsObject.jsify(opts);
    console(_jsMap);
  }

  console(Object obj) {
    context['console'].callMethod('log', [obj]);
  }

  run() {
    _btn?.addEventListener('click', (event) {
      var object = new JsObject(context['Vue'], [_jsMap]);
      console(object);
    });
  }
}
