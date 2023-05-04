import 'dart:isolate';

void main(List<String> arguments) async {
  var uri = Uri.file('/Users/yona/Desktop/eval_example/lib/evaled_code.dart');
  await Isolate.spawnUri(uri, [], '');
}
