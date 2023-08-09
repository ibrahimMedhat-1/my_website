import 'package:flutter/material.dart';

Widget personalDataWidget({
  required IconData icon,
  required String personal,
  required Widget text,
  Color color = Colors.black54,
}) =>
    Row(
      children: [
        Icon(icon),
        Text(
          ' $personal: ',
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        text,
      ],
    );
