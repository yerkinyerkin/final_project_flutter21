import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventCreate extends StatefulWidget {
  const EventCreate({Key? key}) : super(key: key);

  @override
  _EventCreateState createState() => _EventCreateState();

}

class _EventCreateState extends State<EventCreate> {

  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Event Creating'),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.cancel_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            SizedBox(
              height: 200,

              child: CupertinoDatePicker(
                backgroundColor: Color(0x000000),
                initialDateTime: _dateTime,
                onDateTimeChanged: (dateTime){
                  print(dateTime);
                  setState(() {
                    _dateTime = dateTime;
                  });
                } ,
                )
              ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Title*',
                    hintText: 'Title'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 10,),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description*',
                    hintText: 'Description'),
              ),
            ),
            Container(
              height: 100,
              width: 250,
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 0),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: (){},
                child: Text(
                  'Upload image',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 10),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Person limit',
              ),
              )),
        Container(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 20, bottom: 10),
          child: Row(


            children: <Widget>[

              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Paid participation",),
                ),
              ),
              Expanded(
                child: RaisedButton(
                  child: Text("Free"),
                  color: Colors.red,

                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 20, bottom: 10),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Price',
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 20, bottom: 10),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Credit card number',
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 20, bottom: 10),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone number',
                  ),
                )),
            Container(
              height: 100,
              width: 250,
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: (){},
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
