import 'dart:isolate';

void main(_, SendPort port) {
  print('This is evaled code');
  port.send('HELLO FROM EVAL CODE');
}
