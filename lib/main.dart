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
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  // set up the button

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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

          child: Container(
        // color: Colors.amberAccent,
        // margin: const EdgeInsets.all(10),
        // padding: const EdgeInsets.all(10),
        // width: 210.1,
        // child: Text(
        //   'Helo World',
        //   style: TextStyle(
        //     fontStyle: FontStyle.italic,
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //   ),
        //   textAlign: TextAlign.center,
        // ),
        // child: Stack(
        //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   // crossAxisAlignment: CrossAxisAlignment.center,
        //   alignment: AlignmentDirectional.bottomCenter,
        //   children: <Widget>[
        //     new Text("data"),
        //     new Text(
        //       'World',
        //       style: new TextStyle(color: Colors.deepOrange),
        //     )
        //   ],
        // ),
        // child: Image(image: AssetImage("assets/images/aye_captain.jpg")
        //     // NetworkImage(
        //     //     "https://awsimages.detik.net.id/visual/2016/03/15/346121dd-bfd5-41b4-a886-44a3ad29fe1d_169.jpg?w=650")
        //     ),

        // Padding
        // child: Row(
        //   children: <Widget>[
        //     new Text("Helo World",
        //         style: new TextStyle(color: Colors.pink, fontSize: 20)),
        //     new Padding(
        //       // padding: EdgeInsets.all(20.0),
        //       padding: EdgeInsets.fromLTRB(20.0, 10, 20.0, 20),
        //       child: new Text('You are',
        //           style: new TextStyle(color: Colors.amber)),
        //     ),
        //     new Text('How World ?')
        //   ],
        // ),
        // Center
        //         child: Align(
        //   alignment: Alignment.topCenter,
        //   child: Text("Hello World", style: TextStyle(fontSize: 20)),
        // )
        // child: Column(
        // children: <Widget>[
        // new ConstrainedBox(
        //   constraints: BoxConstraints(minWidth: 20, minHeight: 20),
        //   child: new Text('Helo There'),
        // ),
        // new Text(
        //   'Helo There',
        //   style: new TextStyle(fontSize: 15, color: Colors.amber),
        // ),
        // new Baseline(
        //     child: new Text("She Beatifull"),
        //     baseline: -20,
        //     baselineType: TextBaseline.alphabetic)

        // ],
        // )
        // child: Listener(
        //     // new AspectRatio(
        //     //     aspectRatio: 4 / 3,
        //     onPointerDown: (PointerDownEvent event) {
        //       // set up the AlertDialog
        //       AlertDialog alert = AlertDialog(
        //         title: Text("My title"),
        //         content: Text("This is my message."),
        //         actions: [
        //           FlatButton(
        //               child: Text("OK"),
        //               onPressed: () => Navigator.of(context).pop()),
        //         ],
        //       );
        //       // show the dialog
        //       showDialog(
        //         context: context,
        //         builder: (BuildContext context) {
        //           return alert;
        //         },
        //       );
        //     },
        //     onPointerMove: (PointerMoveEvent event) {
        //       print('Event Me');
        //     },
        //     child:
        //         new Image(image: AssetImage("assets/images/aye_captain.jpg"))),
        // new Text("Data Image")),

        child: GestureDetector(
          onDoubleTap: () {
            print('On Double Tap');
          },
          child: new Image(image: AssetImage("assets/images/aye_captain.jpg")),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.access_alarm),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
