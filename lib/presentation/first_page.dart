import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_course_2/application/example_provider.dart';
import 'package:udemy_course_2/router/router.gr.dart' as app_router;

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}
class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ExampleProvider>(
      builder: (context, exampleProvider, _) => Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${exampleProvider.getDataString}',
              style: TextStyle(fontSize: 30),
            ),
            Center(
                child: RaisedButton(
              onPressed: () {
                context.router.push(app_router.SecondRoute());
              },
              child: Text('Go To Second Page'),
            )),
          ],
        ),
      ),
    );
  }
}
