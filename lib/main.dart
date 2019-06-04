import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

List<TimelineModel> items = [
  TimelineModel(Placeholder(),
      position: TimelineItemPosition.random,
      iconBackground: Colors.redAccent,
      icon: Icon(Icons.blur_circular)),
  TimelineModel(Placeholder(),
      position: TimelineItemPosition.random,
      iconBackground: Colors.redAccent,
      icon: Icon(Icons.blur_circular)),
];

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => HomePage(),
      '/history': (context) => SecondHome(),
    },
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: new Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/history');
          },
          child: Text('History'),
        ),
      ),
    );
  }
}

class SecondHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History of music'),
      ),
      body: new Timeline(children: items, position: TimelinePosition.Center),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/history');
        },
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    )
    );
  }
}