import 'package:flutter/material.dart';


class Screen7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoaderScreen(),
    );
  }
}

class LoaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loader'),
      ),
      body: Center(
        child: _buildLoaderWidgets(),
      ),
    );
  }

  Widget _buildLoaderWidgets() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
        SizedBox(height: 20),
        LinearProgressIndicator(),
      ],
    );
  }
}
