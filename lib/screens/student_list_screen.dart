import 'package:flutter/material.dart';

// Define data model for student
class Student {
  String name;
  int id;
  String grade;

  Student({required this.name, required this.id, required this.grade});
}

class StudentListScreen extends StatefulWidget {
  @override
  _StudentListScreenState createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  List<Student> students = [
    Student(name: "John Doe", id: 1, grade: "A"),
    Student(name: "Alice Smith", id: 2, grade: "B"),
    // Add more initial students here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student List"),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            title: Text(student.name),
            subtitle: Text("ID: ${student.id}, Grade: ${student.grade}"),
            onTap: () {
              // Navigate to detail/edit screen
              // Implement edit functionality here
            },
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  students.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Navigate to add screen
          // Implement add functionality here
        },
      ),
    );
  }
}
