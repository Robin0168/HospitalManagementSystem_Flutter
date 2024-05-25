import 'package:flutter/material.dart';
import 'package:hospital_management_system/ClassWork/pages/rowSingleChildScrollView.dart';

class drawar1 extends StatelessWidget {
  const drawar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
             
      ),
     
  
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('Admin Panel'),
            ),
            ListTile(
              title: const Text('Departments'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Doctors'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Patients'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Bill'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Insurance'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Diagnosis'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Admission'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Appointment'),
              onTap: () {},
            ),
          ],
        ),
      ),
        
    );
  }
}