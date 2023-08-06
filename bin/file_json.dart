import 'dart:convert';
import 'dart:io';

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:path/path.dart';

class FileJson extends BenchmarkBase {
  const FileJson() : super('Template');

  static String? filename;

  static void mainPubspec() {
    filename = "data_pubspec";
    const FileJson().report();
  }

  static void mainFlutterAnalyzeOptions() {
    filename = "data_flutteranalyzeoptions";
    const FileJson().report();
  }

  static void mainDartsdklibraries() {
    filename = "data_dartsdklibraries";
    const FileJson().report();
  }

  static void main1000() {
    filename = "data_1000";
    const FileJson().report();
  }

  @override
  void run() {
    String pathToYaml =
        join(dirname(Platform.script.toFilePath()), '../$filename.json');
    File file = File(pathToYaml);
    String fileText = file.readAsStringSync();
    final Map map = json.decode(fileText);
    final String myValue = map['myKey'];
  }

  @override
  void setup() {
    print("FileJson");
  }

  @override
  void teardown() {}
}
