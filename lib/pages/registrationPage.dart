import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  List<String> _likes = [];

  void _toggleLike(String like) {
    setState(() {
      if (_likes.contains(like)) {
        _likes.remove(like);
      } else {
        _likes.add(like);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Select your likes:',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildLikeCheckbox('Pop'),
                _buildLikeCheckbox('Rock'),
                _buildLikeCheckbox('Hip Hop'),
                _buildLikeCheckbox('Electronic'),
                _buildLikeCheckbox('Country'),
                _buildLikeCheckbox('Classical'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Do something with selected likes, for example submit to server
                print(_likes);
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLikeCheckbox(String like) {
    return CheckboxListTile(
      title: Text(like),
      value: _likes.contains(like),
      onChanged: (value) {
        _toggleLike(like);
      },
    );
  }
}
