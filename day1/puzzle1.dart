import 'dart:io';

void main(List<String> args) async {
  File file = File('day1/input.txt');
  var keys = await file.readAsLines();
  int zeros = 0;
  int current_key = 50;
  for (var key in keys) {
    String direction = key.substring(0, 1);
    int distance = int.parse(key.substring(1));
    direction == 'L'
        ? current_key = (current_key - distance) % 100
        : current_key = (current_key + distance) % 100;
    if (current_key == 0) zeros++;
  }
  print(zeros);
}
