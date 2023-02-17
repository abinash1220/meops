import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('TableCalendar Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            ElevatedButton(
              child:const Text('Basics'),
             onPressed: () => {}
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              child:const Text('Range Selection'),
              onPressed: () => {}
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              child:const Text('Events'),
              onPressed: () => {}
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              child:const Text('Multiple Selection'),
              onPressed: () => {}
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              child:const Text('Complex'),
              onPressed: () => {}
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}