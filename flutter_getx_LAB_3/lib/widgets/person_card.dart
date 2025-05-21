import 'package:app/model/person_model.dart';
import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key, required this.person});
  
  final Person person;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(color: Colors.amber),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('First name:  ${person.firstName}'),
            Text('Last Name:  ${person.lastName}'),
            Text('Email:  ${person.email}'),

          ],
        ),
      ),
    );
  }
}