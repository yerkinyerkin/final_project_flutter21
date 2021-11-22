import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:image_cropper/image_cropper.dart";
import "package:image_picker/image_picker.dart";
import 'package:material_segmented_control/material_segmented_control.dart';
import 'event_page.dart';
import 'home_screen.dart';
import 'dart:io';


class EventCreate extends StatefulWidget {
  const EventCreate({Key? key}) : super(key: key);

  @override
  _EventCreateState createState() => _EventCreateState();

}

class _EventCreateState extends State<EventCreate> {
  File? _selectedFile;

  Widget getImageWidget(){
    if(null == _selectedFile){
      return Image.asset(
        "assets/images/create_event_icon.png",
        width: 300,
        height: 105,
        fit: BoxFit.cover,
      );
    }
    else{
      return Image.file(
        _selectedFile!,
        width: 300,
        height: 105,
        fit: BoxFit.cover,
      );
    }
  }

  getImage(ImageSource imageSource) async {
    // File image = await ImagePicker.pickImage(source: ImageSource.camera);
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: imageSource);
    if (image != null){
      File? cropped = await ImageCropper.cropImage(sourcePath: image.path,
          aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
          compressQuality: 100,
          maxWidth: 700,
          maxHeight: 700,
          compressFormat: ImageCompressFormat.jpg,
          androidUiSettings: const AndroidUiSettings(
            toolbarColor: Color(0xff3861FB),
            toolbarTitle: "RPS Cropper",
            statusBarColor: Color(0xff3861FB),
            backgroundColor: Colors.white,
          )
      );
      setState(() {
        _selectedFile = cropped;
      });
    }


  }
  int _currentSelection = 0;
  Map<int, Widget> _children = {
    0:  Container(width: 171.5, child:Center(child:Text('Paid participation'))),
    1: Container(width: 171.5, child:Center(child:Text('Free'))),
  };

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
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()) ,);
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
             /* height: 100,
              width: 250,
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 0),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),*/

              /*child: FlatButton(
                onPressed: (){},

               child: Text(
                  'Upload image',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),*/
              child: Column(
                children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getImageWidget()
                  // Image.asset('assets/image/add.png')//assets/image/add.png
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {getImage(ImageSource.camera);
                  }, child:Text("from camera", style: TextStyle(color: Colors.white))),
                  ElevatedButton(onPressed:(){ getImage(ImageSource.gallery);
                  }, child:Text("from device", style: TextStyle(color: Colors.white),)),
                ],
              ),]
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
              left: 15.0, right: 15.0, top: 20, bottom: 10),),
          Padding(
              padding: EdgeInsets.only(top: 32),
              child: MaterialSegmentedControl(
                children: _children,
                selectionIndex: _currentSelection,
                borderColor: Color(0xff3861fb),
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
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventPage()),
                  );
                },
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
