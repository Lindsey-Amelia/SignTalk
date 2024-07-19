import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'video_call_screen.dart';
import 'settings_screen.dart';

void main() {
  runApp(SilentSpeakSkies());
}

class SilentSpeakSkies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SilentSpeakSkies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        '/chat': (context) => const ChatScreen(),
        '/video_call': (context) => VideoCallScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('SilentSpeakSkies Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video_call');
              },
              child: const Text('Start Video Call'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chat');
              },
              child: const Text('Messages'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: const Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
