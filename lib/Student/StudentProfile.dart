import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hce_app/constants.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class StudentProfile extends StatefulWidget {
  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text(
          "Welcome Rinku",
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
                      'Student Name',
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
                leading: Icon(FontAwesomeIcons.chalkboardTeacher),
                title: Text(
                  'Contact Teacher',
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
            // Text('What do you want to do today'),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      // margin: EdgeInsets.only(top: 0.0,bottom: 30.0),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget('hce2', 'HCE', Color(0xFF2B8590)),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                              'attendance', 'Attendance', Color(0xFF66BCBC)),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget('touch', 'Syllabus', Color(0xFF2B8590)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0,bottom: 10.0),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          courseWidget(
                            'calendar',
                            'Semester 7',
                            Color(0xFF66BCBC),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                            'add',
                            'Notes',
                            Color(0xFF2B8590),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                            'schedule',
                            'Time Table',
                            Color(0xFF66BCBC),
                          ),
                        ],
                      ),
                    ),
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
          print('$title' + ' tapped');
          // openCoursePage('$img', '$title');
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
              child: Center(
                child: Text(
                  '$title',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// void openCoursePage(String img, String title) {
//   Navigator.pushNamed(context, '/coursePage',
//       arguments: {'img': '$img', 'title': '$title'});
// }
}
