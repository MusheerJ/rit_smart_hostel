import 'package:flutter/material.dart';

class ChatsBody extends StatefulWidget {
  const ChatsBody({Key? key}) : super(key: key);

  @override
  _ChatsBodyState createState() => _ChatsBodyState();
}

class _ChatsBodyState extends State<ChatsBody> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text("Chats"),));;
  }
}
