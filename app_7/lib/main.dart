import 'package:flutter/material.dart';
import "package:app_7/63_tapBar.dart";

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
      title: 'WAZ P2 ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scfldKy,
      appBar: AppBar(
        title: Text("WAZ P2"),
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
      /******************************body */
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
      body: tTapBarView(),
      /********************************* */
    );
  }
}
