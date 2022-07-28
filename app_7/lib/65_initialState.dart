import 'package:flutter/material.dart';

class tInitialState extends StatefulWidget {
  const tInitialState({Key? key}) : super(key: key);

  @override
  State<tInitialState> createState() => _tInitialStateState();
}

class _tInitialStateState extends State<tInitialState> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("hellow mother");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hellow World !"),
    );
  }
}
