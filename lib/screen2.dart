import 'package:flutter/material.dart';
import 'package:srsp/screen3.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GenderSelectionScreen(),
    );
  }
}

class GenderSelectionScreen extends StatefulWidget {
  @override
  _GenderSelectionScreenState createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  String selectedGender = '';

  void handleGenderChange(String value) {
    setState(() {
      selectedGender = value;
    });
  }

  void navigateToSnackbarScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Screen3()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Please let us know your gender',
            style: TextStyle(fontSize: 18.0),
          ),
          RadioListTile<String>(
            title: Text('Male'),
            value: 'Male',
            groupValue: selectedGender,
            onChanged: (value) => handleGenderChange(value!),
          ),
          RadioListTile<String>(
            title: Text('Female'),
            value: 'Female',
            groupValue: selectedGender,
            onChanged: (value) => handleGenderChange(value!),
          ),
          SizedBox(height: 20.0),
          Text(
            selectedGender.isEmpty ? 'Choose gender' : 'Hello $selectedGender',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: navigateToSnackbarScreen,
            child: Text('Press'),
          ),
        ],
      ),
    );
  }
}
