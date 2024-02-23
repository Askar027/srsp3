import 'package:flutter/material.dart';
import 'package:srsp/screen6.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertScreen(),
    );
  }
}

class AlertScreen extends StatelessWidget {
  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Election 2020',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          content: Text('Will you vote for Trump'),
          actions: [
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Yes'),
            ),
            ElevatedButton(
              onPressed: () {
                ;
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _showAlert(context);
              },
              child: Text('Press'),
              
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen6()),
                );
                ;
              },
              child: Text('No'),
            ),
          ],
        ),
      ),
    );
  }
}
