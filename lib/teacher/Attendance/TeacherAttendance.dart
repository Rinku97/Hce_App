
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateAttendance extends StatefulWidget {
  @override
  _UpdateAttendanceState createState() => _UpdateAttendanceState();
}

class _UpdateAttendanceState extends State<UpdateAttendance> {
  List<String> semester = [
    '1st sem',
    '2nd sem',
    '3rd sem',
    '4th sem',
    '5th sem',
    '6th sem',
    '7th sem',
    '8th sem'
  ];
  List<String> subject = [
    'sub1',
    'sub2',
    'sub3',
    'sub4',
    'sub5',
    'sub6',
    'sub7',
  ];
  List<String> branch = ['CE', 'CSE', 'ECE', 'EE', 'ME'];
  String selectedSemester;
  String selectedSubject;
  String selectedBranch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/header.png'), fit: BoxFit.fill),
                    // borderRadius: BorderRadius.only(
                    //   bottomLeft: Radius.circular(70.0),
                    //   bottomRight: Radius.circular(70.0),
                    // ),
                  ),
                ),
                Text('Welcome Back!', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),),
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 30.0),
              child: DropdownButton(
                iconSize: 40.0,
                style: TextStyle(fontSize: 25.0, color: Colors.black),
                hint: Text('Select Branch'),
                value: selectedBranch,
                onChanged: (newValue) {
                  setState(() {
                    selectedBranch = newValue;
                  });
                },
                items: branch.map((branch) {
                  return DropdownMenuItem(
                    child: Text(branch),
                    value: branch,
                  );
                }).toList(),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 30.0),
              child: DropdownButton(
                iconSize: 40.0,
                style: TextStyle(fontSize: 25.0, color: Colors.black),
                hint: Text('Select Semester'),
                value: selectedSemester,
                onChanged: (newValue) {
                  setState(() {
                    selectedSemester = newValue;
                  });
                },
                items: semester.map((semester) {
                  return DropdownMenuItem(
                    child: Text(semester),
                    value: semester,
                  );
                }).toList(),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 30.0),
              child: DropdownButton(
                iconSize: 40.0,
                style: TextStyle(fontSize: 25.0, color: Colors.black),
                hint: Text('Select Subject'),
                value: selectedSubject,
                onChanged: (newValue) {
                  setState(() {
                    selectedSubject = newValue;
                  });
                },
                items: subject.map((subject) {
                  return DropdownMenuItem(
                    child: Text(subject),
                    value: subject,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
