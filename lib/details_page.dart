import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.petDetails});

  final Map petDetails; // -- Each pey details Map
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(petDetails["name"]),
            Text("${petDetails["age"]}"),
            Text(petDetails["color"]),
            Text(petDetails["Type"])
          ],
        ),
      ),
    );
  }
}
