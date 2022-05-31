import 'package:flutter/material.dart';
import 'package:student_registration/models/student.dart';

class StudentRegistrationScreen extends StatefulWidget {
  const StudentRegistrationScreen({Key? key}) : super(key: key);
  @override
  State<StudentRegistrationScreen> createState() =>
      _StudentRegistrationScreenState();
}

class _StudentRegistrationScreenState extends State<StudentRegistrationScreen> {
  final _globalkey = GlobalKey<FormState>();
  String? fname, lname, batch, email;
  List<Student> lststudents = [];

  addStudent(Student student) {
    setState(() {
      lststudents.add(student);
      print(lststudents.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Student Registration Form"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _globalkey,
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) => {
                    setState(() {
                      fname = value;
                    })
                  },
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: "First Name",
                    hintText: "First Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "The input box is empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  onChanged: (value) => {
                    setState(() {
                      lname = value;
                    })
                  },
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    hintText: "Last Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "The input box is empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  onChanged: (value) => {
                    setState(() {
                      batch = value;
                    })
                  },
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Batch",
                    hintText: "Batch",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "The input box is empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  onChanged: (value) => {
                    setState(() {
                      email = value;
                    })
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email Address",
                    hintText: "Email Address",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "The input box is empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_globalkey.currentState!.validate()) {
                          Student student = Student(
                              fname: fname,
                              lname: lname,
                              batch: batch,
                              email: email);
                          addStudent(student);
                        }
                      },
                      child: const Text("Add Student")),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/display',
                            arguments: lststudents);
                      },
                      child: const Text("View Student")),
                )
              ],
            ),
          ),
        ));
  }
}
