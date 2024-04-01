import 'package:flutter/material.dart';

class TeacherScreen extends StatefulWidget {
  final String studentName;

  const TeacherScreen({Key? key, required this.studentName}) : super(key: key);

  @override
  _TeacherScreenState createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  List<Subject> subjects = []; // List to store subjects
  double totalAverage = 0.0; // Total average of all subjects

  @override
  Widget build(BuildContext context) {
    // Access studentName using widget.studentName
    String studentName = widget.studentName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Screen'),
      ),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          final subject = subjects[index];
          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(subject.name),
                Text('Marks: ${subject.marks}'),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                _editSubjectMarksDialog(context, index); // Show dialog to edit subject marks
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _addSubjectDialog(context); // Show dialog to add subject
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: _calculateAverage,
              child: Text('Calculate Average'),
            ),
            Text(
              'Total Average: $totalAverage',
              style: TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              onPressed: _saveDetails,
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  // Method to calculate the average of all subjects
  void _calculateAverage() {
    if (subjects.isEmpty) {
      setState(() {
        totalAverage = 0.0; // If no subjects, set totalAverage to 0
      });
      return;
    }

    // Calculate the total marks
    int totalMarks = subjects.fold<int>(
      0,
      (previousValue, element) => previousValue + element.marks,
    );

    // Calculate the average
    setState(() {
      totalAverage = totalMarks / subjects.length;
    });
  }

  // Method to save the details
  void _saveDetails() {
    // Perform the saving functionality here
    // You can use subjects list to get the details of the students
    // For example, you can print the details to the console
    print('Details saved: $subjects');
  }

  // Method to show dialog to add a subject
  Future<void> _addSubjectDialog(BuildContext context) async {
    String subjectName = '';
    int marks = 0;

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Subject'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Subject Name'),
                  onChanged: (value) {
                    subjectName = value;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Marks'),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    marks = int.tryParse(value) ?? 0;
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                setState(() {
                  subjects.add(Subject(name: subjectName, marks: marks));
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // Method to show dialog to edit subject marks
  Future<void> _editSubjectMarksDialog(BuildContext context, int index) async {
    int marks = subjects[index].marks;

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Marks'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Marks'),
                  keyboardType: TextInputType.number,
                  controller: TextEditingController(text: marks.toString()),
                  onChanged: (value) {
                    marks = int.tryParse(value) ?? 0;
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Save'),
              onPressed: () {
                setState(() {
                  subjects[index].marks = marks;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

// Data model for a subject
class Subject {
  final String name;
  int marks;

  Subject({required this.name, required this.marks});
}
