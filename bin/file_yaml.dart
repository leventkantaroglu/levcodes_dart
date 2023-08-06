import 'dart:io';

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:path/path.dart';
import 'package:yaml/yaml.dart';

class FileYaml extends BenchmarkBase {
  const FileYaml() : super('Template');

  static String? filename;

  static void mainFlutterAnalyzeOptions() {
    filename = "data_flutteranalyzeoptions";
    const FileYaml().report();
  }

  static void mainPubspec() {
    filename = "data_pubspec";
    const FileYaml().report();
  }

  static void mainDartsdklibraries() {
    filename = "data_dartsdklibraries";
    const FileYaml().report();
  }

  static void main1000() {
    filename = "data_1000";
    const FileYaml().report();
  }

  @override
  void run() {
    String pathToYaml =
        join(dirname(Platform.script.toFilePath()), '../$filename.yaml');
    File file = File(pathToYaml);
    String fileText = file.readAsStringSync();
    final Map map = loadYaml(fileText) as Map;
    final String myValue = map['myKey'];
  }

  @override
  void setup() {
    print("FileYaml");
  }

  @override
  void teardown() {}
}
