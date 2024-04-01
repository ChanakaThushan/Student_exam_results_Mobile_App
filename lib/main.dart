import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/student_list_screen.dart';
import 'package:my_flutter_app/screens/TeacherScreen.dart';
import 'package:my_flutter_app/screens/welcome_screen.dart';
import 'package:my_flutter_app/screens/role_selection_screen.dart'; // Import the RoleSelectionScreen


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set WelcomeScreen as the initial home page
      home: WelcomeScreen(),
      routes: {
        // Define named routes for navigation
       '/student': (context) => StudentListScreen(),
        '/roleSelection': (context) => RoleSelectionScreen(),
        '/teacher': (context) => TeacherScreen(studentName: 'YourStudentNameHere'), // Replace with the actual student name
      },
    );
  }
}
