import 'package:flutter/material.dart';
import 'main.dart';

class tTapBarView extends StatefulWidget {
  tTapBarView({Key? key}) : super(key: key);

  @override
  State<tTapBarView> createState() => _tTapBarViewState();
}

class _tTapBarViewState extends State<tTapBarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            padding: EdgeInsets.only(bottom: 10.0),
            indicatorColor: Colors.black,
            indicatorWeight: 5.0,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 10.0),
            labelColor: Colors.white,
            labelStyle: TextStyle(),
            onTap: (i) {
              print(i);
            },
            tabs: [
              Tab(
                child: Text("page 1"),
                icon: Icon(Icons.location_on),
              ),
              Tab(
                child: Text("Page 2"),
                icon: Icon(Icons.location_off),
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
