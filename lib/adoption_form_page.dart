import 'package:flutter/material.dart';
import 'colors.dart' as color;
class AdoptionFormPage extends StatelessWidget {
  const AdoptionFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String name = '';
    String number = '';
    String id = '';
    String age = '';

    return Scaffold(
      appBar: AppBar(
        title: Text("Adoption Form"),
        backgroundColor: color.AppColor.homePagesBackground,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Form(

          key: _formKey,

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: (value) {
                  name = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                onChanged: (value) {
                  number = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'ID'),
                onChanged: (value) {
                  id = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your ID';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Age'),
                onChanged: (value) {
                  age = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle form submission
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Form Submitted"),
                        content: Text("Thank you for adopting!"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                              Navigator.of(context).pop(); // Go back to previous page
                            },
                            child: Text("OK"),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}