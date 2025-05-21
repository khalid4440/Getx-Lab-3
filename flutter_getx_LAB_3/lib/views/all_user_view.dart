import 'package:app/controller/person_controller.dart';
import 'package:app/widgets/person_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllUserView extends StatelessWidget {
  const AllUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<PersonController>(
        init: PersonController(),
        builder: (controller) {
          return GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: 
                controller.persons
                    .map((person) => PersonCard(person: person))
                    .toList(),

          );
        } 
      ),
    );
  }
}