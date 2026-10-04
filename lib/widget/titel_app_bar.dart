
import 'package:flutter/material.dart';

class TitelAppBar extends StatelessWidget {
  const TitelAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'A',
          style: TextStyle(
            color: Color.fromARGB(255, 184, 115, 19),
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        Text(
          'griculture',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          ' D',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        Text(
          'ata',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
