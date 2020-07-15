import 'package:demo_app_1/models/Message.dart';
import 'package:demo_app_1/screens/chat_screen.dart';
import 'package:demo_app_1/widgets/list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int idx) {
              final Message chat = chats[idx];
              return ItemListView(chat: chat,);
            },
          ),
        ),
      ),
    );
  }
}
