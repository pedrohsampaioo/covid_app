import 'dart:io';

String fixtureReader(String path) {
  String dir = Directory.current.path;
  if (dir.endsWith("/test")) {
    dir = dir.replaceAll("/test", "");
  }
  return File('$dir/test/fixtures/$path').readAsStringSync();
}
