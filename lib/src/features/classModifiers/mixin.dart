import 'dart:developer';

import 'package:intl/intl.dart';

mixin Logger {
  void log(String message) {
    final now = DateTime.now();
    String formattedDate = DateFormat('dd-MM-yyyy').format(now);
    log('$formattedDate: $message');
  }
}

mixin Counter {
  int _count = 0;

  void increment() {
    _count++;
    log('Count is now $_count');
  }

  int get count => _count;
}

class Person with Logger {
  Person(this.name);
  String name;

  void sayHello() {
    log('Hello, my name is $name');
    //05-06-2024 14:16:37: Hello, my name is Luiz
  }
}

class Button with Logger, Counter {
  void click() {
    log('Button clicked');
    increment();
  }
}


void main() {
 Button button = Button();
  Person hello = Person('Luiz');
  button.click();
  hello.sayHello();
}
