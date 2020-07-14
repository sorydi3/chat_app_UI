import 'package:demo_app_1/models/Message.dart';
import 'package:demo_app_1/widgets/category_selector.dart';
import 'package:demo_app_1/widgets/favorite_contacte.dart';
import 'package:demo_app_1/widgets/recent_chats.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            'chats',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),

      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                //color: Theme.of(context).accentColor
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(30.0),topRight: Radius.circular(30.0))
              ),
              child: Column(
                children: <Widget>[
                  FavoriteContacte(),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

