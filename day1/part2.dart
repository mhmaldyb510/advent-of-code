import 'dart:io';

void main(List<String> args) async {
  File file = File('day1/input.txt');
  var keys = await file.readAsLines();
  int zeros = 0;
  int current_key = 50;
  for (var key in keys) {
    String direction = key.substring(0, 1);
    int distance = int.parse(key.substring(1));

    if (direction == 'R') {
      for (int i = 0; i < distance; i++) {
        current_key = (current_key + 1) % 100;
        if (current_key == 0) zeros++;
      }
    } else {
      for (int i = 0; i < distance; i++) {
        current_key = (current_key - 1) % 100;
        if (current_key == 0) zeros++;
      }
    }
  }
  print(zeros);
}
