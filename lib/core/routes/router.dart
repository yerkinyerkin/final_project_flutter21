import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/core/routes/routes_const.dart';
import 'package:project/core/widgets/buttons/back_button.dart';
import 'package:project/presentation/home/pages/EventCreate.dart';
import 'package:project/presentation/main/main_screen.dart';


class InnLabRouter {

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {

    final parts = routeSettings.name!.split('?');

    switch (parts[0]) {
      case MainRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => MainScreen(),
        );
      case CreateEvent:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => EventCreate(),
        );
      default:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) =>
              CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  leading: InnLabNavigationBackButton(
                    color: Colors.black,
                  ),
                  middle: Text('Навигация'),
                ),
                child: Center(
                  child: Text(
                    'Ошибка, роут для ${routeSettings.name} не найден',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
        );
    }
  }
}
