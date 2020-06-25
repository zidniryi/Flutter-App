import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: MyHomePage(title: 'Get API'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
  
        body: Container(
          padding: EdgeInsets.symmetric(vertical:30),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.green[900],
              Colors.green[800],
              Colors.green[400]
            ]
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                SizedBox(height: 20),
                Padding(padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                  FadeAnimation(1, Text("Login ", style: TextStyle(color: Colors.white, fontSize: 40))),
                  FadeAnimation(1.3, Text("Welcome Hi ", style: TextStyle(color: Colors.white, fontSize: 18))),
                  ],
                ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))

                    ),
                    child: Padding(padding: EdgeInsets.all(30),
                    child:Column(children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(10),
                         
                         boxShadow: [BoxShadow(
                           color: Color.fromRGBO(115, 230, 161, .3),
                           blurRadius: 20,
                           offset: Offset(0, 10)
                         )]
                       ),
                       child: Column(children: <Widget>[
                          FadeAnimation(1, Container(
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             border:Border(bottom: BorderSide(color: Colors.grey[200]))
                           ),
                           child: TextField(
                             decoration: InputDecoration(
                               hintText: "Email or Phone Number",
                               hintStyle: TextStyle(color: Colors.grey),
                               border: InputBorder.none
                             ),
                           ),
                         )),
                          FadeAnimation(1.5, Container(
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             border:Border(bottom: BorderSide(color: Colors.grey[200]))
                           ),
                           child: TextField(
                             decoration: InputDecoration(
                               hintText: "Password",
                               hintStyle: TextStyle(color: Colors.grey),
                               border: InputBorder.none
                             ),
                           ),
                         ))
                       ],),
                      ),
                      SizedBox(height: 20),
                      Text("Forgot Password", style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 20),
                       FadeAnimation(1, Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50 ),
                          color: Colors.green
                        ),
                        child: Center(
                          child: Text('LOGIN', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                      )),
                      SizedBox(height: 20),
                      Text("With Social Media", style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 20),

                       FadeAnimation(1, Row(
                        children: <Widget>[
                          Expanded(child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue
                            ),
                            child: Center(
                              child: Center(
                                child: Text("Facebook", style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ),
                          ),
                          SizedBox(width: 20),
                            Expanded(child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red
                            ),
                            child: Center(
                              child: Text("Google", style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          ),
                        ],
                        
                      )),
                      




                      
                    ],)
                    
                    ),
                  ),

                )


              ]
              
            ),
        )
        
    );
  }
}
