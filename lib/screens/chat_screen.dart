import 'package:demo_app_1/models/Message.dart';
import 'package:demo_app_1/models/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState(user: user);
}

class _ChatScreenState extends State<ChatScreen> {
  final User user;
  _ChatScreenState({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
          child: Text(
            user.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Column(
                children: <Widget>[
                  ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int idx) {
                      return Text(messages[idx].text);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
