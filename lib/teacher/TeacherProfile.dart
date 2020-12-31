import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hce_app/constants.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:hce_app/teacher/Attendance/TeacherAttendance.dart';
// import 'package:hce_app/Demo2.dart';
class TeacherProfile extends StatefulWidget {
  @override
  _TeacherProfileState createState() => _TeacherProfileState();
}

class _TeacherProfileState extends State<TeacherProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text(
          "Welcome Teacher",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      drawer: Container(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Row(
                  children: [
                    CircularProfileAvatar(
                      null,
                      onTap: () {
                        print('Upload Profile Picture');
                      },
                      child: Icon(Icons.add_a_photo),
                      borderColor: Colors.transparent,
                      borderWidth: 2,
                      radius: 50,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Teacher Name',
                      style: TextStyle(
                          fontSize: 18.0, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF66BCBC),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Home',
                  style: kCardTextStyle,
                ),
                onTap: () {
                  print('Home Tapped');
                },
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.userSecret),
                title: Text(
                  'Contact Admin',
                  style: kCardTextStyle,
                ),
                onTap: () {
                  print('Contact Admin Tapped');
                },
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.signOutAlt),
                title: Text(
                  'Logout',
                  style: kCardTextStyle,
                ),
                onTap: () {
                  print('Logout Tapped');
                },
              ),
            ],
          ),
        ),
        color: Color(0xFF66BCBC),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'What do you want to do today?',
              style: TextStyle(
                  fontSize: 35,
                  height: 1.3,
                  fontWeight: FontWeight.w700,
                  color: Colors.teal,
                  fontStyle: FontStyle.italic),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget(
                            'noticeboard',
                            'News and Notice for College',
                            Color(0xFF2B8590),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget('notice', 'Notice/Update for Class',
                              Color(0xFF66BCBC)),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          courseWidget('attendance',
                              'Update Attendance for Class', Color(0xFF66BCBC),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget('add', 'Add Notes for the Class',
                              Color(0xFF2B8590)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Container courseWidget(String img, String title, Color bgColor) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
        onTap: () {
          if ('$title' == 'News and Notice for College') {
            print('$title' + 'tapped');
          }else if('$title' == 'Notice/Update for Class') {
            print('$title' + 'tapped');
          }else if ('$title' == 'Update Attendance for Class') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  // return UpdateAttendance();
                  return UpdateAttendance();
                },
              ),
            );
          }else if ('$title' == 'Add Notes for the Class') {
            print('$title' + 'tapped');
          }
          // openCoursePage('$title');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Hero(
              tag: '$img',
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/$img.png'),
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                '$title',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void openCoursePage(String title) {
  }
}
