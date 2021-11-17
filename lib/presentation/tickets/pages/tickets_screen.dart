import 'package:flutter/material.dart';


class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(eventName: "Music club",date: "11.11.2021",time:"19:00",payment:"1000tg"),
    Quote(eventName: "Sport club",date: "18.12.2021",time:"16:00",payment:"500tg"),
    Quote(eventName: "IQ club",date: "23.12.2021",time:"15:00",payment:"1500tg"),
    Quote(eventName: "IT club",date: "14.01.2022",time:"21:00",payment:"3000tg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Tickets"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body:
      Column(
        children: [
          Center(child:Container(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Text('Tickets',
                  style: TextStyle(fontSize: 28)))),
          Expanded(
            child: ListView(
              children: quotes.map((quote) => QuoteCard(
                quote: quote,
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}




class Quote {
  String eventName;
  String date;
  String time;
  String payment;

  Quote({required this.eventName,required this.date,required this.time,required this.payment});
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  const QuoteCard({Key? key, required this.quote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Image(image: AssetImage('assets/images/ticketimg1.png')),
        ),
        Positioned(
          left: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 55,),
                  Text(quote.eventName, style: TextStyle(fontSize: 32),),
                  SizedBox(height: 28,),
                  Row(
                    children: [
                      Text(quote.date, style: TextStyle(fontSize: 16),),
                      SizedBox(width: 61,),
                      Text(quote.time, style: TextStyle(fontSize: 16),),
                    ],
                  )
                ],
              ),
              SizedBox(width: 35,),
              RotationTransition(
                turns: AlwaysStoppedAnimation(-90 / 360),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40, right: 40),
                  child: Text(quote.payment, style: TextStyle(fontSize: 30)),
                )
              )
            ],
          ),
        )
      ],
    );
  }
}

// class QuoteCard extends StatelessWidget {
//   final Quote quote;
//   // final Function delete;
//   QuoteCard({required this.quote});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Card(
//         margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
//         child: Container(
//           color: Colors.yellow,
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Text(
//                   quote.eventName,
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     color: Colors.grey[600],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 6.0,
//                 ),
//                 Text(
//                   quote.date,
//                   style: TextStyle(
//                     fontSize: 14.0,
//                     color: Colors.grey[800],
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   quote.time,
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     color: Colors.grey[600],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 6.0,
//                 ),
//                 Text(
//                   quote.payment,
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     color: Colors.grey[600],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 6.0,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }