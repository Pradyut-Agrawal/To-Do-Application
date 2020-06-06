import 'task_tile.dart';
import 'package:flutter/material.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}