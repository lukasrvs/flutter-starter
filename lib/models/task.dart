import 'package:flutter/material.dart';

class Task {
  int? id;
  IconData? iconData; 
  String? title;
  Color? backgroundColor;
  Color? iconColor;
  Color? buttonColor;
  bool isLast;
  Task({
    this.id,
    this.iconData, 
    this.title, 
    this.backgroundColor, 
    this.iconColor, 
    this.buttonColor,
    this.isLast = false
  });

  static List<Task> generateTasks() {
    return [
      Task(
        id: 1,
        iconData: Icons.person_rounded,
        title: "Pessoais",
        backgroundColor: Color.fromARGB(255, 236, 223, 173),
        iconColor: const Color.fromARGB(255, 168, 127, 2),
        buttonColor: Colors.yellow
      ),
      Task(
        id: 2,
        iconData: Icons.cases_rounded,
        title: "Trabalho",
        backgroundColor: Color.fromARGB(255, 243, 171, 166),
        iconColor: const Color.fromARGB(255, 240, 69, 57),
        buttonColor: Colors.red
      ),
      Task(
        id: 3,
        iconData: Icons.all_out,
        title: "Diversos",
        backgroundColor: Color.fromARGB(255, 144, 179, 233),
        iconColor: Color.fromARGB(255, 60, 123, 165),
        buttonColor: const Color.fromARGB(255, 0, 65, 117)
      ),
      Task(isLast: true)
    ];
  }
}