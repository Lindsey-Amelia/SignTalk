import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ChatList(),
      bottomNavigationBar: ChatInput(),
    );
  }
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Add chat messages here
        ListTile(
          title: Text('Hello!'),
          subtitle: Text('How are you?'),
        ),
      ],
    );
  }
}

class ChatInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Handle sending message
            },
          ),
        ],
      ),
    );
  }
}
