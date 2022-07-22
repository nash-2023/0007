import 'package:flutter/material.dart';

class tSnackBar extends StatelessWidget {
  const tSnackBar({Key? key}) : super(key: key);

  static const _snackBar = SnackBar(content: Text("YAY Snack Bar !"));
  static const _allert = AlertDialog(
    title: const Text('AlertDialog Title'),
    content: const Text('AlertDialog description'),
    actions: <Widget>[
      TextButton(
        onPressed: null, //() =>Navigator.pop(context, 'Cancel'),
        child: const Text('Cancel'),
      ),
      TextButton(
        onPressed: null, //() => Navigator.pop(context, 'OK'),
        child: const Text('OK'),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
            color: Colors.red,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(_snackBar);
            },
            child: Container(
              width: 100.0,
              height: 40.0,
              alignment: Alignment.center,
              child: Text(
                "show snackbar",
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ),
          ),
          MaterialButton(
            color: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return _allert;
                },
              );
            },
            child: Container(
              width: 100.0,
              height: 40.0,
              alignment: Alignment.center,
              child: Text(
                "show Allert",
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}






















/****************************************** */

// import 'package:flutter/material.dart';

// class tSnackBar extends StatefulWidget {
//   const tSnackBar({Key? key}) : super(key: key);
//   @override
//   State<tSnackBar> createState() => _tSnackBarState();
// }

// class _tSnackBarState extends State<tSnackBar> {
//   final snackBar = SnackBar(
//     behavior: SnackBarBehavior.floating,
//     content: Text('Yay! A SnackBar!'),
//     duration: Duration(milliseconds: 1000),
//     backgroundColor: Colors.green,
//     padding: EdgeInsets.all(20.0),
//     margin: EdgeInsets.all(30.0),
//     action: SnackBarAction(
//       label: 'XXXX',
//       textColor: Colors.red,
//       onPressed: () {
//         // Some code to undo the change.
//       },
//     ),
//   );

//   void _creatSnackBar() {
//     // Find the ScaffoldMessenger in the widget tree
//     // and use it to show a SnackBar.
//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: MaterialButton(
//         color: Color.fromARGB(255, 245, 167, 51),
//         onPressed: _creatSnackBar,
//         child: Text("Hit Me"),
//       ),
//     );
//   }
// }
