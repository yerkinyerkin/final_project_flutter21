import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InnLabNavigationBackButton extends StatefulWidget {
  final Color? color;

  const InnLabNavigationBackButton({Key? key, this.color}) : super(key: key);

  @override
  _InnLabNavigationBackButtonState createState() =>
      _InnLabNavigationBackButtonState();
}

class _InnLabNavigationBackButtonState extends State<InnLabNavigationBackButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () => Navigator.maybePop(context),
      padding: EdgeInsets.zero,
      child: Container(
        width: 50,
        alignment: Alignment.centerLeft,
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 30.0,
        )
      ),
    );
  }
}
