import 'dart:isolate';

void main(List<String> arguments) async {
  var uri = Uri.parse(
      'https://raw.githubusercontent.com/sorgfal/eval_example/main/lib/evaled_code.dart');
  ReceivePort port = ReceivePort();
  await Isolate.spawnUri(uri, [], port.sendPort);
}
