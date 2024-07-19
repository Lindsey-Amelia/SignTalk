import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key); // Add this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SilentSpeakSkies Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video_call');
              },
              child: Text('Start Video Call'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chat');
              },
              child: Text('Messages'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
