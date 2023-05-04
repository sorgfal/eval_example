import 'dart:isolate';

void main(List<String> arguments) async {
  /// Делаем ссылку на dart файл
  var uri = Uri.parse(
      'https://github.com/sorgfal/eval_example/raw/main/build/snapshot_for_eval');

  /// Создаем порт для общения с изолятом
  ReceivePort port = ReceivePort();

  /// Спауним изолят из ссылки(скачается само)
  await Isolate.spawnUri(uri, [], port.sendPort);

  /// подписываемся на события recieve порта
  await for (var i in port) {
    print(i);
  }

  /// Просто чет захотелось (почти синдром Туретта)
  await Future.delayed(Duration(seconds: 10));
}


/// Как мы видим код из файла lib/evaled_code.dart не импортируется внутри проекта