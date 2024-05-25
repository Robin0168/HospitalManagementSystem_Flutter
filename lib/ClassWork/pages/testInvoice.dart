// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:hospital_management_system/ClassWork/model/patients.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;

// class TestInvoice extends StatefulWidget {
//   final Patients? task;

//   const TestInvoice({Key? key, this.task}) : super(key: key);
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hospital_management_system/ClassWork/model/patients.dart';
import 'package:path_provider/path_provider.dart'; // Import path_provider package
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class TestInvoice extends StatefulWidget {
  final Patients? task;

  const TestInvoice({Key? key, this.task}) : super(key: key);

  @override
  _TestInvoiceState createState() => _TestInvoiceState();
}

class _TestInvoiceState extends State<TestInvoice> {
  late String lastName;
  late String address1;
  late String country;
  late String departmentName;
  late String email;

  @override
  void initState() {
    super.initState();
    if (widget.task != null) {
      lastName = widget.task!.lastName.toString();
      address1 = widget.task!.address1.toString();
      country = widget.task!.country.toString();
      departmentName = widget.task!.departmentName.toString();
      email = widget.task!.email.toString();
      print(lastName);
      print(departmentName);
      print(address1);
      print(country);
      print(email);
      print("-----------------------------");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Invoice'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hospital Management system',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Date: May 22, 2024',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Customer: $lastName',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Expenditure :',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            _buildItemRow('Doctor Appointment', 1000),
            _buildItemRow('Health Insaurance', 100),
            _buildItemRow('Patient Identity Card', 100),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal:',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '\Tk1200',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tax (10%):',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '\Tk120',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Divider(),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\Tk1320',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _printInvoice,
                  child: Text('Print'),
                ),
                ElevatedButton(
                  onPressed: _saveInvoice,
                  child: Text('Save'),
                ),
              ],
            ),
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/allPatient", (route) => true);
            print("Login Button Clicked");
          },
          elevation: 0,
          child: Icon(Icons.logout),
          backgroundColor: Color.fromARGB(255, 190, 203, 197),
        ),
    ));
  }

  Widget _buildItemRow(String itemName, double itemPrice) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          itemName,
          style: TextStyle(fontSize: 16.0),
        ),
        Text(
          '\$$itemPrice',
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  void _printInvoice() {
    // Implement printing logic here
    print('Printing invoice...');
  }

  void _saveInvoice() async {
    final pdf = pw.Document();

    // Create a PDF document
    pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Text('Invoice', style: pw.TextStyle(fontSize: 24.0)),
        );
      },
    ));

    // Save the PDF document to a file
    final output = await getTemporaryDirectory();
    final file = File('${output.path}/invoice.pdf');
    await file.writeAsBytes(await pdf.save());

    print('Invoice saved as PDF: ${file.path}');
  }
}
