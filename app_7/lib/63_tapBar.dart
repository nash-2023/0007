import 'package:flutter/material.dart';
import 'main.dart';

class tTapBarView extends StatefulWidget {
  tTapBarView({Key? key}) : super(key: key);

  @override
  State<tTapBarView> createState() => _tTapBarViewState();
}

class _tTapBarViewState extends State<tTapBarView> {
  GlobalKey<ScaffoldState> _skey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _skey,
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Text("page 1"),
              ),
              Tab(
                child: Text("Page 2"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.green,
              child: Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ontext) {
                        return AlertDialog(
                          title: Text("fun"),
                          content: Text("lorem epsod dun karg fogo"),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.alarm),
                  label: Text("Show alert"),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Text("01"),
            ),
          ],
        ),
      ),
    );
  }
}
