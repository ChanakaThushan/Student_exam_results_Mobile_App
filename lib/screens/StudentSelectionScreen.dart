import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/TeacherScreen.dart';

class StudentSelectionScreen extends StatelessWidget {
  final List<String> studentNames = ['Chanaka', 'Bandara', 'Thushan']; // Example student names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Student'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select a student',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            // Display student names as buttons
            Column(
              children: studentNames.map((name) {
                return ElevatedButton(
                  onPressed: () {
                    // Navigate to the TeacherScreen when a student is selected
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TeacherScreen(studentName: name)),
                    );
                  },
                  child: Text(name),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
