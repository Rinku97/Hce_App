import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hce_app/color/color.dart';
import 'package:hce_app/teacher/teacherLogin.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:hce_app/Student/StudentLogin.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircularProfileAvatar(
                null,
                child: Image.asset('images/hce.png'),
                borderColor: Colors.transparent,
                radius: 100,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'HCE Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            RaisedGradientButton(
              child: Text(
                ''
                'I am Teacher',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              gradient: LinearGradient(
                colors: [Color(0xFF086D7F), Color(0xFF046EAA), Color(0xFF80BDAE)],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
                print('Teacher Pressed');
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedGradientButton(
              child: Text(
                'I am Student',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              gradient: LinearGradient(
                colors: [Color(0xFF086D7F), Color(0xFF046EAA),Color(0xFF80BDAE)],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StudentHomePage();
                    },
                  ),
                );
                print('Student Pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}
