import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 124, 189, 243),
                  Color.fromARGB(255, 173, 216, 230),
                ],
              ),
            ),
          ),
          title: Text(
            'Education Center',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 124, 189, 243),
                    Color.fromARGB(255, 173, 216, 230),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Education Center',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Our app helps teachers and students manage exam-related tasks effectively. Teachers can submit exam results and important announcements, while students can access and view these details conveniently.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Instructions for Students:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildInstructionBox(
              icon: Icons.assignment_turned_in,
              title: 'Check your exam results',
              content:
                  'View your exam results and performance insights easily on our platform.',
            ),
            SizedBox(height: 20),
            _buildInstructionBox(
              icon: Icons.notifications,
              title: 'View important announcements',
              content:
                  'Stay updated with important announcements and notifications from your teachers.',
            ),
            SizedBox(height: 20),
            _buildInstructionBox(
              icon: Icons.book,
              title: 'Access study materials',
              content:
                  'Access study materials and resources provided by your teachers to aid your learning.',
            ),
            SizedBox(height: 30),
            Text(
              'Instructions for Teachers:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildInstructionBox(
              icon: Icons.assignment,
              title: 'Submit exam results',
              content:
                  'Easily submit exam results and grades for your students through our platform.',
            ),
            SizedBox(height: 20),
            _buildInstructionBox(
              icon: Icons.announcement,
              title: 'Make important announcements',
              content:
                  'Communicate important information and announcements to your students effectively.',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Log',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Profile',
          ),
        ],
        backgroundColor: Color.fromARGB(255, 124, 189, 243),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        currentIndex: 1,
        onTap: (index) {
          // Handle navigation if needed
        },
      ),
    );
  }

  Widget _buildInstructionBox({
    required IconData icon,
    required String title,
    required String content,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 40),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  content,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
