import 'package:flutter/material.dart';

class CountCharactersPage extends StatelessWidget {
  final TextEditingController _stringController = TextEditingController();
  String _result = '';

  CountCharactersPage({super.key});

  void _countCharacters() {
    final String input = _stringController.text;
    _result = 'Number of characters: ${input.length}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Characters'),
      ),
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
              child: Text('Count'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}