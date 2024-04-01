import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0), // Add some space below the text
            ElevatedButton(
              onPressed: () {
                // Navigate to the StudentListScreen when the button is pressed
                Navigator.pushNamed(context, '/studentList');
              },
              child: Text('Go'), // Button label
            ),
          ],
        ),
      ),
    );
  }
}
