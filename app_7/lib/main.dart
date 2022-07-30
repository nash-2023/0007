import 'package:flutter/material.dart';
import "package:app_7/63_tapBar.dart";
import 'package:app_7/65_initialState.dart';
import 'package:app_7/65_tabBarWithInitialState.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WAZ-P2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'WAZ-P2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scfldKy = new GlobalKey<ScaffoldState>();
  var selected_idx = 0;
  List<Widget> widgetPages = [
    Text("page # Zero"),
    Text("page # One"),
    Text("page # Two"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scfldKy,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.map),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.location_on),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.flag),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("Abdalla"),
              ),
              accountEmail: Text("abdalla.fat7y@hotmail.com"),
              accountName: Text("Al-Ezz"),
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text("me"),
              subtitle: Text("you"),
            )
          ],
        ),
      ),
      /****************************** body */
      // body: Center(
      //   child: ElevatedButton.icon(
      //     onPressed: () {
      //       _scfldKy.currentState?.openDrawer();
      //     },
      //     icon: Icon(Icons.alarm),
      //     label: Text("Show bar"),
      //   ),
      // ),
      /********************************* */
      // body: widgetPages[selected_idx],
      body: widgetPages.elementAt(selected_idx),
      /********************************* */
      //*************************************** 66_buttom navigation bar */
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.blue,
        currentIndex: selected_idx,
        selectedItemColor: Colors.red,
        selectedFontSize: 20.0,
        selectedLabelStyle: TextStyle(
          decoration: TextDecoration.underline,
        ),
        unselectedItemColor: Colors.black,
        unselectedFontSize: 10.0,
        unselectedLabelStyle: TextStyle(
          decoration: TextDecoration.lineThrough,
        ),

        onTap: (i) {
          setState(() {
            selected_idx = i;
          });
        },
        items: [
          BottomNavigationBarItem(label: "Zero", icon: Icon(Icons.ac_unit)),
          BottomNavigationBarItem(label: "One", icon: Icon(Icons.dangerous)),
          BottomNavigationBarItem(label: "Two", icon: Icon(Icons.gamepad)),
        ],
      ),
    );
  }
}
