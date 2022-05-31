import 'package:flutter/material.dart';

import '../models/person.dart';

// import 'models/Person.dart';
class PersonCard extends StatelessWidget {
  PersonCard({Key? key}) : super(key: key);
  List<Person> lstPerson = [
    Person(
        fname: "Chirag",
        lname: "Simkhada",
        image: "assets/images/image1.webp",
        flag: 0),
    Person(
        fname: "Salil",
        lname: "Timalsina",
        image:
            "https://cdn.pixabay.com/photo/2020/06/01/22/23/eye-5248678__340.jpg",
        flag: 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Person Card Scren"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [for (Person person in lstPerson) getCard(person)],
          ),
        ));
  }

  Widget getCard(Person person) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            person.flag == 0
                ? Image.asset(
                    person.image!,
                    height: 200,
                    width: 200,
                    // fit: BoxFit.fitWidth,
                  )
                : Image.network(
                    person.image!,
                    height: 100,
                    width: 100,
                    // fit: BoxFit.fitWidth,
                  ),
            Text(person.fname!),
            Text(person.lname!)
          ],
        ),
      ),
    );
  }
}
