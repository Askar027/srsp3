import 'package:flutter/material.dart';
import 'package:srsp/screen4.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HobbySelectionScreen(),
    );
  }
}

class HobbySelectionScreen extends StatefulWidget {
  @override
  _HobbySelectionScreenState createState() => _HobbySelectionScreenState();
}

class _HobbySelectionScreenState extends State<HobbySelectionScreen> {
  List<String> selectedHobbies = [];

  void toggleHobby(String hobby) {
    setState(() {
      if (selectedHobbies.contains(hobby)) {
        selectedHobbies.remove(hobby);
      } else {
        selectedHobbies.add(hobby);
      }
    });
  }

  Widget buildCheckbox(String hobby) {
    return CheckboxListTile(
      title: Text(hobby),
      value: selectedHobbies.contains(hobby),
      onChanged: (_) => toggleHobby(hobby),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Choose your hobbies:',
              style: TextStyle(fontSize: 18.0),
            ),
            buildCheckbox('Football'),
            buildCheckbox('Baseball'),
            buildCheckbox('Video Games'),
            buildCheckbox('Reading Books'),
            buildCheckbox('Surfing The Internet'),
            SizedBox(height: 16.0),
            Text(
              'Selected Hobbies: ${selectedHobbies.join(", ")}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen4()),
                );
              },
              child: Text('Press'),
            ),
          ],
        ),
      ),
    );
  }
}
