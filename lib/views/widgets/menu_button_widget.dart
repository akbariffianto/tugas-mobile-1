import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color color;
  const MenuButton({
    super.key, 
    this.color = Colors.black,
    required this.title,
    required this.onPressed,
  });
    

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: color,
          ),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
