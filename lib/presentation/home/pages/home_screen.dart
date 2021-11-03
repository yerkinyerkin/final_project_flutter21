import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:project/presentation/auth/pages/sign_in.dart';
import 'package:project/presentation/home/model/events_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<EventModel> event = [
    EventModel(Colors.blue, 'MountKings'),
    EventModel(Colors.red, 'KingSpeech'),
    EventModel(Colors.black, 'Dance Club'),
    EventModel(Colors.yellow, 'Shapagat'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Home', style: TextStyle(fontSize: 30,),),
      ),
      body: SafeArea(
        child: Column(
          children: [
             
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(Icons.add_circle_outline, color: Colors.black.withOpacity(0.3) ,size: 32,),
                  color: Colors.white,
                ),
                Text('Press to Create Event', style: TextStyle(color: Colors.black.withOpacity(0.3), fontSize: 24, fontWeight: FontWeight.w400),)
              ],
            ),
            SizedBox(height: 34,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('SDU Clubs', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                      child: Container(
                    child: Text('See all', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                  ), onPressed: (){})
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              height: 120,
              child: StaggeredGridView.countBuilder(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1,
                itemCount: event.length,
                itemBuilder: (BuildContext context, int index) =>
                    Row(
                      children: [
                        Container(
                          height: 120,
                          width: 110,
                            color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 27.5,
                                        backgroundColor: event[index].color,
                                        child: SvgPicture.asset('assets/icons/sdu-logo.svg'),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(event[index].clubName, style: TextStyle(fontSize: 14),),
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(1, 1),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              )
            )
          ],
        ),
      ),
    );
  }
}
