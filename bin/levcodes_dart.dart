import 'file_json.dart';
import 'file_xml.dart';
import 'file_yaml.dart';

void main(List<String> arguments) {
  print("----------");
  print("Flutter New Project Pubspec");
  print("----------");
  FileJson.mainPubspec();
  FileXml.mainPubspec();
  FileYaml.mainPubspec();
  print("----------");
  print("Flutter SDK Analyze Options");
  print("----------");
  FileJson.mainFlutterAnalyzeOptions();
  FileXml.mainFlutterAnalyzeOptions();
  FileYaml.mainFlutterAnalyzeOptions();
  print("----------");
  print("Dart SDK Libraries");
  print("----------");
  FileJson.mainDartsdklibraries();
  FileXml.mainDartsdklibraries();
  FileYaml.mainDartsdklibraries();
  print("----------");
  print("1000 keys & values");
  print("----------");
  FileJson.main1000();
  FileXml.main1000();
  FileYaml.main1000();
}
