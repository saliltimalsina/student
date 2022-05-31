import 'package:flutter/material.dart';
import 'package:student_registration/models/students.dart';

class CardScreen extends StatelessWidget {
  CardScreen({Key? key}) : super(key: key);

  List<Student> lstStudent = [
    Student(fname: 'John', lname: 'Doe', age: 16),
    Student(fname: 'John', lname: 'rae', age: 25),
    Student(fname: 'John', lname: 'dd', age: 49),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Screen"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            for (Student students in lstStudent)
              getCard(students.fname!, students.lname!, students.age!),
          ]),
        ));
  }

  Widget getCard(String fname, String lname, int age) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(fname),
            Text(lname),
            Text(age.toString()),
          ],
        ),
      ),
    );
  }
}
