import 'package:flutter/material.dart';
import 'package:srsp/screen5.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BackMenuScreen(),
    );
  }
}

class BackMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MyButton(),
      ),
      drawer: MyDrawer(),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      child: Text('Press'),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final String userName = "";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50.0,
              width: 50,
              color: Colors.red,
            ),
            SizedBox(height: 8.0),
            Text(
              'ФИО пользователя:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              userName,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 16.0),
            buildListTile(Icons.person, 'О себе', context),
            SizedBox(height: 16.0),
            buildListTile(Icons.settings, 'Настройки', context),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen5()),
                );
              },
              child: Text('Basic List'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );
  }
}
