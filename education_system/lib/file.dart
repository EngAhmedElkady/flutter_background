import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class Save_data {
  // methods
  Future<String> get localpath async {
    final path = await getApplicationDocumentsDirectory();
    return path.path;
  }

  Future<File> get localfile async {
    String path = await localpath;
    print(path);
    var file = File("$path/data.txt");
    return file;
  }

  Future<File> write(String data) async {
    var file = await localfile;
    return file.writeAsString(data);
  }

  Future<String> read() async {
    try {
      var file = await localfile;
      String data = await file.readAsString();
      return data;
    } catch (e) {
      return "empty";
    }
  }
}
