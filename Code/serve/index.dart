import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:http_server/http_server.dart';
import 'package:path/path.dart';

final _address = InternetAddress.loopbackIPv4;
const _port = 4040;

Future main() async {
  var pathToBuild = join(dirname(Platform.script.toFilePath()), '../web/');

  var staticFiles = VirtualDirectory(pathToBuild);
  staticFiles.allowDirectoryListing = true; /*1*/
  staticFiles.directoryHandler = (dir, request) /*2*/ {
    var indexUri = Uri.file(dir.path).resolve('index.html');
    staticFiles.serveFile(File(indexUri.toFilePath()), request); /*3*/
  };

  var server = await HttpServer.bind(
    _address,
    _port,
  );
  print('Listening on localhost:${server.port}');

  await server.forEach((request) {
    var path = Uri.decodeComponent(request.uri.path);
    // print(path);
    if (path == '/api/mock') {
        request.response
        ..statusCode = HttpStatus.ok
        ..write(jsonEncode({
            'name': 'dart...',
        }))
        ..close();
    } else {
        request.response
        ..headers.add('cache-control', 'max-age=0');
      staticFiles.serveRequest(request);
    }
  }); /*4*/

  print('???');
}

void addCorsHeaders(HttpResponse response) {
  response.headers.add('Access-Control-Allow-Origin', '*');
  response.headers.add('Access-Control-Allow-Methods', 'POST, OPTIONS');
  response.headers.add('Access-Control-Allow-Headers',
      'Origin, X-Requested-With, Content-Type, Accept');
}
