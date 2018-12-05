import 'package:flutter/material.dart';
import 'package:todo_list/fighter/view_base.dart';
import 'package:todo_list/main.viewmodel.dart';

class MyHomePage extends StatefulViewBase<MainViewModel> {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    var viewmodel = this.viewmodel;

    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${viewmodel.counter}',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ++viewmodel.counter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  MainViewModel get viewmodel => new MainViewModel();
}
