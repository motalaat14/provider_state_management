import 'package:flutter/material.dart';
import 'package:provider_test/provider/counter.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Counter())],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provid = Provider.of<Counter>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(provid.count.toString(),style: TextStyle(fontSize: 200),),
            FlatButton(onPressed: provid.counterIncrement, child: Text('ADD'))
          ],
        ),
      ),
    );
  }
}
