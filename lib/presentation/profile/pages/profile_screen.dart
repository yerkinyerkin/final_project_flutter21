import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final List info_items = [
    ['profile_page_icons/png/birth_date_icon.png','-----------'],
    ['profile_page_icons/png/hometown_icon.png','-----------'],
    ['profile_page_icons/png/faculty_icon.png','-----------'],
    ['profile_page_icons/png/club_icon.png','-----------'],
    ['profile_page_icons/png/event_icon.png','0 Events Created']
  ];
  int _currentSelection = 0;
  Map<int, Widget> _children = {
    0:  Container(width: 171.5, child:Center(child:Text('Main Info'))),
    1: Container(width: 171.5, child:Center(child:Text('Posted Events'))),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Profile', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black)),
        centerTitle: true,
        leading: TextButton(
          onPressed: () {},
          child: Text('edit', style: TextStyle(color: Color(0xff808A9D)),),
        ),
        actions: [
          TextButton(
            child: Text('sign out', style: TextStyle(color: Color(0xff808A9D)),),
            onPressed: () {}
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children:<Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                child: Column(
                  children:<Widget>[
                    CircleAvatar(
                      radius: 127.5,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          '/profile_page_icons/profile_photo_placeholder.svg',
                          width: 143,
                          height: 186,
                        ),
                        radius: 126.5,
                      ),
                    ),
                    Text('Name Surname', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,)),
                    Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: MaterialSegmentedControl(
                        children: _children,
                        selectionIndex: _currentSelection,
                        borderColor: Color(0xff3861FB),
                        selectedColor: Color(0xff3861FB),
                        unselectedColor: Colors.white,
                        borderRadius: 32.0,
                        disabledChildren: [
                          2,
                        ],
                        onSegmentChosen: (int index) {
                          setState(() {
                            _currentSelection = index;
                          });
                        },
                      )
                    ),
                  ],
                ), 
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.0),
                child: Divider(
                  thickness: 5,
                  color: Color(0xff808A9D),
                  indent: 16,
                  endIndent: 16,
                ),
              ),
              Container(
                height: 75,
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[
                    Image(
                      image: AssetImage(info_items[0][0]),
                      width: 32, height: 32,
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 96),
                      child: Center(
                        child: Text(
                          info_items[0][1],
                          style: TextStyle(
                            color: Color(0xff808A9D),
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                      ),
                    )
                    
                  ],
                ),
              ),
              Container(
                height: 75,
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[
                    Image(
                      image: AssetImage(info_items[1][0]),
                      width: 32, height: 32,
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 96),
                      child: Center(
                        child: Text(
                          info_items[1][1],
                          style: TextStyle(
                            color: Color(0xff808A9D),
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                      ),
                    )
                    
                  ],
                ),
              ),
              Container(
                height: 75,
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[
                    Image(
                      image: AssetImage(info_items[2][0]),
                      width: 32, height: 32,
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 96),
                      child: Center(
                        child: Text(
                          info_items[2][1],
                          style: TextStyle(
                            color: Color(0xff808A9D),
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 75,
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[
                    Image(
                      image: AssetImage(info_items[3][0]),
                      width: 32, height: 32,
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 96),
                      child: Center(
                        child: Text(
                          info_items[3][1],
                          style: TextStyle(
                            color: Color(0xff808A9D),
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 75,
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[
                    Image(
                      image: AssetImage(info_items[3][0]),
                      width: 32, height: 32,
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 96),
                      child: Center(
                        child: Text(
                          info_items[3][1],
                          style: TextStyle(
                            color: Color(0xff808A9D),
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 75,
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[
                    Image(
                      image: AssetImage(info_items[4][0]),
                      width: 32, height: 32,
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 96),
                      child: Center(
                        child: Text(
                          info_items[4][1],
                          style: TextStyle(
                            color: Color(0xff808A9D),
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  // Widget buildSegment(String text) {
  //   return Container(
  //     // child: Text(text, style: TextStyle(fontSize: 16, color: Color(0xff5DB075))),
  //     child: Text(text, style: TextStyle(fontSize: 16, color: Colors.black)),
  //   );
  // }
}
