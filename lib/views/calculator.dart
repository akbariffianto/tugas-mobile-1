

import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  String _result = '';

  void _add() {
    try{
      final int num1 = int.parse(_num1Controller.text);
      final int num2 = int.parse(_num2Controller.text);
      _result = 'Result: ${num1 + num2}';
    } catch (e) {
      _result = 'Please enter a valid number';
    }
  }

void _subtract() {
    try{
      final int num1 = int.parse(_num1Controller.text);
      final int num2 = int.parse(_num2Controller.text);
      _result = 'Result: ${num1 - num2}';
    } catch (e) {
      _result = 'Please enter a valid number';
    }
  }

void _multiply() {
    try{
      final int num1 = int.parse(_num1Controller.text);
      final int num2 = int.parse(_num2Controller.text);
      _result = 'Result: ${num1 * num2}';
    } catch (e) {
      _result = 'Please enter a valid number';
    }
  }

void _divide() {
    try{
      final int num1 = int.parse(_num1Controller.text);
      final int num2 = int.parse(_num2Controller.text);
      _result = 'Result: ${num1 / num2}';
    } catch (e) {
      _result = 'Please enter a valid number';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Addition'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _num1Controller,
              decoration: InputDecoration(labelText: 'Number 1'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _num2Controller,
              decoration: InputDecoration(labelText: 'Number 2'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _add();
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
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _subtract();
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
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _multiply();
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
                  child: Text('x'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _divide();
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
                  child: Text('/'),
                ),
              ],
            ),
            SizedBox(height: 40),
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
