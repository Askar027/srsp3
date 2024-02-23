import 'package:flutter/material.dart';
import 'package:srsp/screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDialogExample(),
    );
  }
}

class AlertDialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: Text('Нажми'),
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Builder(
          builder: (BuildContext context) {
            return _buildAlertDialog(context);
          },
        );
      },
    );
  }

  AlertDialog _buildAlertDialog(BuildContext context) {
    return AlertDialog(
      title: _buildDialogTitle(),
      content: _buildDialogContent(),
      backgroundColor: Colors.red,
      actions: [
        _buildPlayButton(context),
      ],
    );
  }

  Row _buildDialogTitle() {
    return Row(
      children: [
        Icon(Icons.album, size: 60, color: Color.fromARGB(173, 183, 0, 0)),
        SizedBox(width: 8),
        Text(
          'Sonu Nigam',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(173, 183, 0, 0),
          ),
        ),
      ],
    );
  }

  Text _buildDialogContent() {
    return Text(
      'Best Of Sonu Nigam Music',
      style: TextStyle(fontSize: 16, color: Color.fromARGB(173, 183, 0, 0)),
    );
  }

  ElevatedButton _buildPlayButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Screen1()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      child: Text(
        'Play',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}