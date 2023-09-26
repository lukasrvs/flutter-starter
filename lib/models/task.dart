import 'package:flutter/material.dart';

class Task {
  IconData? iconData; 
  String? title;
  Color? backgroundColor;
  Color? iconColor;
  Color? buttonColor;
  num? left;
  num? done;
  bool isLast;
  Task({
    this.iconData, 
    this.title, 
    this.backgroundColor, 
    this.iconColor, 
    this.buttonColor, 
    this.left, 
    this.done, 
    this.isLast = false
  });

  static List<Task> generateTasks() {
    return [
      Task(
        iconData: Icons.person_rounded,
        title: "Pessoais",
        backgroundColor: Color.fromARGB(255, 236, 223, 173),
        iconColor: const Color.fromARGB(255, 168, 127, 2),
        buttonColor: Colors.yellow,
        left: 0,
        done: 0
      ),
      Task(
        iconData: Icons.cases_rounded,
        title: "Trabalho",
        backgroundColor: Color.fromARGB(255, 243, 171, 166),
        iconColor: const Color.fromARGB(255, 240, 69, 57),
        buttonColor: Colors.red,
        left: 0,
        done: 0
      ),
      Task(
        iconData: Icons.all_out,
        title: "Diversos",
        backgroundColor: Color.fromARGB(255, 144, 179, 233),
        iconColor: Color.fromARGB(255, 60, 123, 165),
        buttonColor: const Color.fromARGB(255, 0, 65, 117),
        left: 0,
        done: 0
      ),
      Task(isLast: true)
    ];
  }
}