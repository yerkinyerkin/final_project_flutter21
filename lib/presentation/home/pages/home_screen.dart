import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/core/routes/routes_const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Home', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),
      ),
      body: Container(
        color: Colors.black.withOpacity(0.07),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: CupertinoButton(
                    onPressed: (){
                      Navigator.pushNamed(context, CreateEvent);
                    },
                    padding: EdgeInsets.zero,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_circle_outline, size: 32,
                          color: Color(0xff808A9D),),
                        SizedBox(width: 4,),
                        Text('Create Event', style: TextStyle(fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff808A9D)),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SDU Clubs', style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 30),),
                      CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Text('See all', style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff3861FB)),))
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                Container(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(10, (int index) {
                      return Row(
                        children: [
                          SizedBox(width: 16,),
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset('assets/icons/clublogo1.svg')
                              ],
                            ),
                          ),
                          index == 9 ? SizedBox(width: 16,) : Offstage()
                        ],
                      );
                    }
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}