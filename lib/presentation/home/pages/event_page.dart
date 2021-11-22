
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/core/routes/routes_const.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();

}

class _EventPageState extends State<EventPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Event', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black)),
        centerTitle: true,
        leading: TextButton(
          onPressed: () { Navigator.pushNamed(context, CreateEvent);},
          child: Text('back', style: TextStyle(color: Color(0xff808A9D)),),
        ),
      ),
    body: SingleChildScrollView(

      child: SafeArea(
         child: Column(
           children:<Widget>[
         Container(
         margin: EdgeInsets.only(top: 10, right: 10, left: 10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 55,
                        width: 55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child: Image.asset("assets/images/profile.png"),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "ALexsandrAlex",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 10),
                child: Divider(
                  thickness: 1.50,
                ),
              ),
            ],
          )),

             Column(mainAxisAlignment: MainAxisAlignment.center, children: [
               Container(
                 decoration: BoxDecoration(
                   borderRadius: const BorderRadius.all(Radius.circular(20)),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.7),
                       spreadRadius: 5,
                       blurRadius: 9,
                       offset: Offset(0, 4), // Shadow position
                     ),
                   ],
                   image: DecorationImage(
                     image: NetworkImage('assets/icons/sdu-logo.svg'),
                     fit: BoxFit.cover,
                   ),
                 ),
                 height: 315,
                 width: MediaQuery.of(context).size.width,
               ),
             ]),


             Padding(
                 padding: const EdgeInsets.only(
                     left: 0, right: 15.0, top: 20, bottom: 10),
                 //padding: EdgeInsets.symmetric(horizontal: 15),
                 child: Text(

                     'ds aasdg ag ag adg adf adrga dv dgf av agadv advag dv '
                 )),

             Padding(
                 padding: const EdgeInsets.only(
                     left: 15.0, right: 0, top: 20, bottom: 10),
                 //padding: EdgeInsets.symmetric(horizontal: 15),
                 child: Text(
                     'Requisits',
                     style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),

                 )

             ),
             Padding(
                 padding: const EdgeInsets.only(
                     left: 15.0, right: 0, top: 20, bottom: 10),
                 //padding: EdgeInsets.symmetric(horizontal: 15),
                 child: Text(

                     '8747 32 46 ',
                   style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                 )),
             Padding(
                 padding: const EdgeInsets.only(
                     left: 15.0, right: 0, top: 20, bottom: 10),
                 //padding: EdgeInsets.symmetric(horizontal: 15),
                 child: Text(

                     'xxx xxx xxxxx xxx',
                   style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                 )),
             Container(
               height: 50,
               width: 250,
               padding: const EdgeInsets.only(
                   left: 15.0, right: 15.0, top: 20, bottom: 0),
               decoration: BoxDecoration(
                   color: Colors.blue, borderRadius: BorderRadius.circular(20)),
               child: FlatButton(
                 onPressed: (){},
                 child: Text(
                   'Participate',
                   style: TextStyle(color: Colors.white, fontSize: 22),
                 ),
               ),
             ),

           ]
    )
    )));
  }
}
