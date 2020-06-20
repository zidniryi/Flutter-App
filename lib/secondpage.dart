import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // Initial variable String
  String str = "";

// Get Key Data
  SecondPage({Key key, this.str}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text(str)
        ),
        body: Center(
      
          child: RaisedButton(
              onPressed: () {
                Navigator.pop(context, "I am a Return Data");
              },
              child: Text("Go Back")
          ),
        )
    );
  }
}
