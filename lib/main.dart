import 'package:evaluation/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma liste de course',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(
          title: 'Ma liste de Course'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Pacifico'
            ),
          ),
        )
      ),
      body: _getBody(index),
      backgroundColor: Colors.teal.shade50,
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => setState(() => index = value),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade400,
        selectedFontSize: 18.0,
        iconSize: 75.0,
        backgroundColor: Colors.teal.shade500,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.list,
                color: Colors.teal.shade100
            ),
            label: 'Liste de course',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.euro_symbol,
                color: Colors.teal.shade100
            ),
            label: 'Dépenses totales',
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return ListCourses(); // Create this function, it should return your first page as a widget
      case 1:
        return Depenses(); // Create this function, it should return your second page as a widget
    }
    return Center(child: Text("There is no page builder for this index."),);
  }
}
