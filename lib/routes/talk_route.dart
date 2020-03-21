import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'chat_route.dart';

class Talk extends StatelessWidget {
  var talkList = List<Widget>();

  Talk() {
    for (var i = 0; i < 30; i++) {
      this.talkList.add(
          TalkList(icon: Icons.person, username: "鹿太郎", message: "しかし、鹿しかいない"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("トーク"),
      ),
      body: ListView(padding: const EdgeInsets.all(8), children: talkList),
    );
  }
}

class TalkList extends StatelessWidget {
  IconData icon;
  String username;
  String message;

  TalkList({IconData icon, String username, String message}) {
    this.icon = icon;
    this.username = username;
    this.message = message;
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.20,
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(this.icon),
            backgroundColor: Colors.pink,
          ),
          title: Text(this.username),
          subtitle: Text(this.message),
          onTap: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Chat(username: this.username)))
          },
        ),
      ),
      actions: <Widget>[
        IconSlideAction(
          color: Colors.blue,
          icon: Icons.flash_off,
          onTap: () => {}, // _showSnackBar('Archive'),
        ),
        IconSlideAction(
          color: Colors.indigo,
          icon: Icons.volume_off,
          onTap: () => {}, // _showSnackBar('Share'),
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          color: Colors.black45,
          iconWidget: Text(
            "非表示",
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => {}, // _showSnackBar('More'),
        ),
        IconSlideAction(
          color: Colors.red,
          iconWidget: Text(
            "削除",
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => {}, // _showSnackBar('Delete'),
        ),
      ],
    );
  }
}
