import 'dart:io';

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:path/path.dart';
import 'package:xml/xml.dart';

class FileXml extends BenchmarkBase {
  const FileXml() : super('Template');

  static String? filename;

  static void mainPubspec() {
    filename = "data_pubspec";
    const FileXml().report();
  }

  static void mainFlutterAnalyzeOptions() {
    filename = "data_flutteranalyzeoptions";
    const FileXml().report();
  }

  static void mainDartsdklibraries() {
    filename = "data_dartsdklibraries";
    const FileXml().report();
  }

  static void main1000() {
    filename = "data_1000";
    const FileXml().report();
  }

  @override
  void run() {
    String pathToYaml =
        join(dirname(Platform.script.toFilePath()), '../$filename.xml');
    File file = File(pathToYaml);
    String fileText = file.readAsStringSync();
    final XmlDocument document = XmlDocument.parse(fileText);

    final XmlElement root = document.rootElement;
    final String myValue = root.findElements('myKey').single.innerText;
  }

  @override
  void setup() {
    print("FileXml");
  }

  @override
  void teardown() {}
}
