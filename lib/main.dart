import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/student_list_screen.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudentListScreen(), 
    );
  }
}
