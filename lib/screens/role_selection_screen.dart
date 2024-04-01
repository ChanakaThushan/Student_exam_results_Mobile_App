import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/StudentSelectionScreen.dart'; // Import the StudentSelectionScreen

class RoleSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Role'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentSelectionScreen()),
                );
              },
              child: Text('Teacher'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Student List screen or any other student-related screen
              },
              child: Text('Student'),
            ),
          ],
        ),
      ),
    );
  }
}
