class EventCreate extends StatefulWidget {
  const EventCreate({Key? key}) : super(key: key);

  @override
  _EventCreateState createState() => _EventCreateState();
}

class _EventCreateState extends State<EventCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appbar: AppBar(
        title: Text('Event Creating'),
        backgroundColor: Color.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
    );
  }
}
