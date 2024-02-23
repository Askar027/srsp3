import 'package:flutter/material.dart';
import 'package:srsp/screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    BasicListScreen(),
    TableApp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationBar'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Home Page'),
          ElevatedButton(
            onPressed: () {
              navigateToPage(context, Screen2());
            },
            child: Text('Press for Loader'),
          ),
        ],
      ),
    );
  }
}

class BasicListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return Row(
      children: <Widget>[
        _buildIconColumn(),
        _buildTextColumn(),
      ],
    );
  }

  Widget _buildIconColumn() {
    return Container(
      width: 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.map),
          Icon(Icons.photo_album),
          Icon(Icons.phone),
          Icon(Icons.contacts),
          Icon(Icons.settings),
        ],
      ),
    );
  }

  Widget _buildTextColumn() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Map'),
          Text('Album'),
          Text('Phone'),
          Text('Contact'),
          Text('Setting'),
        ],
      ),
    );
  }
}

class TableApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TableScreen(),
    );
  }
}

class TableScreen extends StatelessWidget {
  final List<Map<String, String>> tableData = [
    {'name': 'John', 'age': '30', 'city': 'New York'},
    {'name': 'Alice', 'age': '25', 'city': 'Los Angeles'},
    {'name': 'Bob', 'age': '35', 'city': 'Chicago'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _buildDataTable(),
        ],
      ),
    );
  }

  Widget _buildDataTable() {
    return DataTable(
      columns: <DataColumn>[
        DataColumn(
          label: Text('Имя'),
        ),
        DataColumn(
          label: Text('Возраст'),
        ),
        DataColumn(
          label: Text('Город'),
        ),
      ],
      rows: _buildDataRows(),
    );
  }

  List<DataRow> _buildDataRows() {
    return tableData.map((data) {
      return DataRow(
        cells: [
          DataCell(Text(data['name']!)),
          DataCell(Text(data['age']!)),
          DataCell(Text(data['city']!)),
        ],
      );
    }).toList();
  }
}

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
