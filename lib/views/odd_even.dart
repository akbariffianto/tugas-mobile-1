import 'package:flutter/material.dart';

class OddEvenPage extends StatelessWidget {
  final TextEditingController _numController = TextEditingController();
  String _result = '';

  void _checkOddEven() {
    try {
      final int num = int.parse(_numController.text);
      if (num % 2 == 0) {
        _result = 'The number is even';
      } else {
        _result = 'The number is odd';
      }
    } catch (e) {
      _result = 'Please enter a valid number';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Odd or Even'), backgroundColor: Color(0xFF5B913B)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _numController,
              decoration: InputDecoration(labelText: 'Enter a number'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xFF5B913B)),
              onPressed: () {
                _checkOddEven();
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
              child: Text('Check', style: TextStyle(color: Colors.black)),
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
