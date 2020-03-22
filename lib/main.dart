// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter 100 Days',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.teal,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   double sliderAmount = 0;
//   int _counter = 0;
//   int _selectedIndex = 1;
//   String _name = "zidni";
//   String dropdownStr = 'Batman Begins';
//   String text = "";
//   // set up the button

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   void _setTime() {
//     print('Set Time');
//   }

//   void _addTime() {
//     print('ADD TIME');
//   }

//   void itemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   void CallContact() {
//     print("Calling contact");
//   }

//   void AddInfoToContact() {
//     print("Adding Info To Contact");
//   }

//   void ItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   itemClick() {
//     print('Helo CLick');
//     setState(() {
//       _name = "ridwan";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//         appBar: AppBar(
//           // Here we take the value from the MyHomePage object that was created by
//           // the App.build method, and use it to set our appbar title.
//           title: Text(widget.title),
//         ),
//         body: ListView(children: <Widget>[
//           Row(
//             //ROW 1
//             children: [
//               Container(
//                 color: Colors.orange,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//               Container(
//                 color: Colors.blue,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//               Container(
//                 color: Colors.purple,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             //ROW 2
//             children: [
//               Container(
//                 color: Colors.orange,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//               Container(
//                 color: Colors.blue,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//               Container(
//                 color: Colors.purple,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             //ROW 4
//             children: [
//               Container(
//                 color: Colors.orange,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//               Container(
//                 color: Colors.blue,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//               Container(
//                 color: Colors.purple,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//             ],
//           ),
//           Row(// ROW 3
//               children: [
//             Container(
//               color: Colors.orange,
//               margin: EdgeInsets.all(25.0),
//               child: FlutterLogo(
//                 size: 60.0,
//               ),
//             ),
//             Container(
//               color: Colors.blue,
//               margin: EdgeInsets.all(25.0),
//               child: FlutterLogo(
//                 size: 60.0,
//               ),
//             ),
//             Container(
//               color: Colors.purple,
//               margin: EdgeInsets.all(25.0),
//               child: FlutterLogo(
//                 size: 60.0,
//               ),
//             ),
//           ]),
//           Row(
//             children: <Widget>[
//               Container(
//                   child: Slider(
//                 value: sliderAmount,
//                 onChanged: (double delta) {
//                   setState(() {
//                     sliderAmount = delta;
//                   });
//                   print(sliderAmount);
//                 },
//                 divisions: 10,
//                 activeColor: Colors.black,
//               ))
//             ],
//           ),
//           Container(
//               child: Tooltip(
//             message: 'Helo',
//             child: Text('Text Me'),
//           )),
//           Container(
//             margin: EdgeInsets.all(10.0),
//             child: TextField(
//               onChanged: (String string) {
//                 setState(() {
//                   text = string;
//                 });
//               },
//             ),
//           )
//         ]));
//   }
// }

// /**
//  *
//  *
//  *
//  *
//  *
//  */

// //  child: TextField(
// //         onChanged: (String string) {
// //           setState(() {
// //             text = string;
// //           });
// //         },
// //       ),

// Tooltip

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Epic Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          Center(
            child: Image(
              width: 100.0,
              height: 100.0,
              image: NetworkImage(
                  "https://img.favpng.com/17/7/7/heart-icon-love-icon-png-favpng-fdEYx0u0j6vLbKTw6ptuPxCD2.jpg"),
            ),
          ),
          Center(
            child: Image(
              width: 100.0,
              height: 100.0,
              image: NetworkImage(
                  "https://img.favpng.com/17/7/7/heart-icon-love-icon-png-favpng-fdEYx0u0j6vLbKTw6ptuPxCD2.jpg"),
            ),
          ),
          Center(
            child: Image(
              width: 100.0,
              height: 100.0,
              image: NetworkImage(
                  "https://img.favpng.com/17/7/7/heart-icon-love-icon-png-favpng-fdEYx0u0j6vLbKTw6ptuPxCD2.jpg"),
            ),
          ),
          Center(
            child: Text('COk'),
          ),
          Center(
            child: Text('COk'),
          ),
          Center(
            child: Text('COk'),
          ),
          Center(
            child: Text('COk'),
          ),
          Center(
            child: Text('COk'),
          ),
          Center(
            child: Text('COk'),
          ),
          Center(
            child: Text('COk'),
          ),
          Center(
            child: Text('COk'),
          ),
          Center(
            child: Text('COk'),
          ),
          Center(
            child: Text('COk'),
          ),
          Center(
            child: Text('COk'),
          ),
          Center(
            child: Text('COk'),
          ),
        ],
      )),
    );
  }
}
