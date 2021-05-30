import 'dart:io';

String jsonString(String name) {
  return File("test/test_resources/$name/$name.json").readAsStringSync();
}
