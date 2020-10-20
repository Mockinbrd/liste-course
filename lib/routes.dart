import 'package:flutter/material.dart';

class ListCourses extends StatefulWidget {
  @override
  _ListCoursesState createState() => _ListCoursesState();
}

class _ListCoursesState extends State<ListCourses> {
  Map<String, bool> values = {
    'Lait': false,
    'Tomates': false,
    'Céréales': false,
    "Bouteille d'eau": false,
    'Café': false,
    'Pain': false,
    'Blanc de dinde': false,
    'POULET': true,
    'Glaces': false,
    'Pâtes': false
  };

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: values.keys.map((String key) {
        return new CheckboxListTile(
          title: new Text(key),
          value: values[key],
          onChanged: (bool value) {
            setState(() {
              values[key] = value;
            });
          },
        );
      }).toList(),
    );
  }
}

class Depenses extends StatefulWidget {
  @override
  _DepensesState createState() => _DepensesState();
}

class _DepensesState extends State<Depenses> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new InkWell(
        onTap: () => setState(() => _count++),
        child: new Container(
          // width: 100.0,
          // height: 100.0,
          padding: const EdgeInsets.all(50.0),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pink.shade200,
          ),
          child: new Text(_count.toString(),
              style: new TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontFamily: 'Pacifico'
              )
          ),
        ),
      ),
    );
  }
}