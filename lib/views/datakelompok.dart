import 'package:flutter/material.dart';

class DataKelompokPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Kelompok'),
        backgroundColor: Color(0xFF5B913B)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data Kelompok',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('1. Fahmi Kariem (123220028)', style: TextStyle(fontSize: 20)),
            Text('2. Windy Claudia Napitupulu (123220029)', style: TextStyle(fontSize: 20)),
            Text('3. Akbar Ariffianto (123220004)', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 50),
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