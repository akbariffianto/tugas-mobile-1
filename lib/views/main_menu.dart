import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/count_characters.dart';
import 'package:flutter_application_1/views/login_page.dart';
import 'package:flutter_application_1/views/odd_even.dart';
import 'package:flutter_application_1/views/widgets/menu_button_widget.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuButton(
                title: 'Calculator',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CalculatorPage()),
                  );
                },
              ),
              SizedBox(height: 20),
              MenuButton(
                title: 'Count Characters',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CountCharactersPage()),
                  );
                },
              ),
              SizedBox(height: 20),
              MenuButton(
                title: 'Odd or Even',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OddEvenPage()),
                  );
                },
              ),
              const SizedBox(height: 20),
              MenuButton(
                  title: "LogOut",
                  color: Colors.red ,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
