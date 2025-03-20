import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Messages")),
      body: Center(child: Text("This is the message page")),
    );
  }
}
