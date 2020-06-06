
import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
 bool check = false ;
 void Checkboxcallback(bool newval){
   setState(() {
     check = newval ;
   });
 }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a Task',
      style: TextStyle(
        decoration: check?TextDecoration.lineThrough : null ,
      ),
      ) ,
      trailing: TaskCheckBox(check,Checkboxcallback),
    );
  }
}
  
class TaskCheckBox extends StatelessWidget {
 
    final bool checkboxstate ; 
    final Function togglecheckboxstate ; 
    TaskCheckBox(this.checkboxstate,this.togglecheckboxstate) ;
  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkboxstate,
    
    onChanged: togglecheckboxstate ,
    );
  }
}