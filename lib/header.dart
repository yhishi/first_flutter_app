import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('ホーム'),
      centerTitle: true,

      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.settings)
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.add),
        ),
      ],
      backgroundColor: Colors.black87,
      elevation: 5.0,
    );
  }
}
