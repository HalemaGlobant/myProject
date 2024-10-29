import 'package:flutter/material.dart';
import 'colors.dart' as color;
import 'adoption_form_page.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.petDetails});

  final Map petDetails; // -- Each pet details Map
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePagesBackground,
        appBar: AppBar(
        title: Text("Pet Details"), // Optional: Add a title to the AppBar
    ),
    body: SafeArea(
    child: Center( // You can use Center here to center the column
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
          children: [
            petDetails["img"] != null
                ? Image.asset(
              petDetails["img"],
              height: 200,  // Adjust height as needed
              width: 200,   // Adjust width as needed
              fit: BoxFit.cover, // Adjust how the image fits
            )
                : Container(), // Placeholder if no image URL is provided

            SizedBox(height: 20),

            Text(petDetails["name"],
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
            Text("${petDetails["age"] ?? "N/A"} years old",
              style: TextStyle(fontSize: 24),),
            Text(petDetails["color"],
            style: TextStyle(fontSize: 24),),
            Text(petDetails["Type"],
                style: TextStyle(fontSize: 24),),
            SizedBox(height: 20), // Space before the button

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdoptionFormPage(),
                  ),
                );
              },
              child: Text("Adopt Now"),
            ),
          ],
        ),
      ),
    ), );
  }
}
