import 'dart:async';
import 'package:http/http.dart' as http;
import './outPut.dart';

class Async {
  OutPut output;
  Async(this.output);

  Future<String> getNetData() async {
    http.Response res = await http.get("/api/mock");
    return res.body;
  }

  run() {
    final future = getNetData();
    future.then((result) {
        output.print(result);
    });
  }
}
