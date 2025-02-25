import 'package:flutter/material.dart';

class CountCharactersPage extends StatelessWidget {
  final TextEditingController _stringController = TextEditingController();
  String _result = '';

  CountCharactersPage({super.key});

  void _countCharacters() {
    final String input = _stringController.text;

    // Use a regular expression to find all digits in the input string
    final RegExp regex = RegExp(r'\d');
    final Iterable<Match> matches = regex.allMatches(input);

    // Count the number of matches (digits)
    final int count = matches.length;

    _result = 'Number of digits: $count';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Count Characters Digits'),
          backgroundColor: Color(0xFF5B913B)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _stringController,
              decoration: InputDecoration(labelText: 'Enter a string'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xFF5B913B)),
              onPressed: () {
                _countCharacters();
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text(_result),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Count', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xFF5B913B)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
