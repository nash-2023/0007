import 'package:flutter/material.dart';

class tTapBarView extends StatefulWidget {
  const tTapBarView({Key? key}) : super(key: key);
  @override
  State<tTapBarView> createState() => _tTapBarViewState();
}

class _tTapBarViewState extends State<tTapBarView> {
  GlobalKey<ScaffoldState> skey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TabBarView(
        children: [
          Container(
            color: Colors.red,
            child: Text("01"),
          ),
          Container(
            key: skey,
            color: Colors.green,
            child: Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  skey.currentState?.openDrawer();
                },
                icon: Icon(Icons.alarm),
                label: Text("Show bar"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
