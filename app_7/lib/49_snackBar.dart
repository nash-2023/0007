import 'package:flutter/material.dart';

class tSnackBar extends StatefulWidget {
  const tSnackBar({Key? key}) : super(key: key);
  @override
  State<tSnackBar> createState() => _tSnackBarState();
}

class _tSnackBarState extends State<tSnackBar> {
  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    content: Text('Yay! A SnackBar!'),
    duration: Duration(milliseconds: 1000),
    backgroundColor: Colors.green,
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.all(30.0),
    action: SnackBarAction(
      label: 'XXXX',
      textColor: Colors.red,
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );

  void _creatSnackBar() {
    // Find the ScaffoldMessenger in the widget tree
    // and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        color: Color.fromARGB(255, 245, 167, 51),
        onPressed: _creatSnackBar,
        child: Text("Hit Me"),
      ),
    );
  }
}
