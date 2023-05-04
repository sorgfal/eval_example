import 'dart:isolate';

void main(_, SendPort port) {
  port.send('HELLO FROM EVAL CODE');
}
