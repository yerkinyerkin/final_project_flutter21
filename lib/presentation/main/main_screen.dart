import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/core/routes/router.dart';
import 'package:project/presentation/home/pages/home_screen.dart';
import 'package:project/presentation/info/pages/info_screen.dart';
import 'package:project/presentation/profile/pages/profile_screen.dart';
import 'package:project/presentation/tickets/pages/tickets_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int indexTab = 0;

  void indexChange(index) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // navigationBar: CupertinoNavigationBar(
      //   middle: Text('Kindacode.com'),
      // ),
      body: IndexedStack(
        index: indexTab,
        children: <Widget>[
          CupertinoTabView(
            navigatorKey: Get.nestedKey(0),
            navigatorObservers: [GetObserver((_) {}, Get.routing)],
            onGenerateRoute: (settings) =>
                InnLabRouter.generateRoute(settings),
            builder: (_) => HomeScreen(),
          ),
          CupertinoTabView(
            navigatorKey: Get.nestedKey(1),
            navigatorObservers: [GetObserver((_) {}, Get.routing)],
            onGenerateRoute: (settings) =>
                InnLabRouter.generateRoute(settings),
            builder: (_) => QuoteList(),
          ),
          CupertinoTabView(
            navigatorKey: Get.nestedKey(2),
            navigatorObservers: [GetObserver((_) {}, Get.routing)],
            onGenerateRoute: (settings) =>
                InnLabRouter.generateRoute(settings),
            builder: (_) => ProfileScreen(),
          ),
          CupertinoTabView(
            navigatorKey: Get.nestedKey(3),
            navigatorObservers: [GetObserver((_) {}, Get.routing)],
            onGenerateRoute: (settings) =>
                InnLabRouter.generateRoute(settings),
            builder: (_) => InfoScreen(),
          ),
        ],
      ),
        bottomNavigationBar: CupertinoTabBar(
          onTap: (int index){
            setState(() {
              indexTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Image(
              image: AssetImage('assets/images/home.png'),
              width: 32,
              height: 32,
              color: indexTab == 0 ? Colors.blueAccent : Colors.black,)),
            BottomNavigationBarItem(icon: Image(
                image: AssetImage('assets/images/ticket.png'),
                width: 32,
                height: 32,
                color: indexTab == 1 ? Colors.blueAccent : Colors.black)),
            BottomNavigationBarItem(icon: Image(
                image: AssetImage('assets/images/profile.png'),
                width: 32,
                height: 32,
                color: indexTab == 2 ? Colors.blueAccent : Colors.black)),
            BottomNavigationBarItem(icon: Image(
                image: AssetImage('assets/images/info.png'),
                width: 32,
                height: 32,
                color: indexTab == 3 ? Colors.blueAccent : Colors.black))
          ],
        )
    );
  }
}
