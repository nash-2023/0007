import 'package:flutter/material.dart';

class tTabInit extends StatefulWidget {
  tTabInit({Key? key}) : super(key: key);

  @override
  State<tTabInit> createState() => _tTabInitState();
}

class _tTabInitState extends State<tTabInit>
    with SingleTickerProviderStateMixin {
  @override
  late TabController myControler;
  // = new TabController(length: 2, vsync: this, initialIndex: 0);
  void initState() {
    // TODO: implement initState
    super.initState();
    myControler = new TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: myControler,
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
        controller: myControler,
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
    );
  }
}
