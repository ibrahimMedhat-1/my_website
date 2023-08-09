import 'package:flutter/material.dart';

Widget contactMeWidget({
  required IconData icon,
  required String title,
  required String text,
  required Function() onTap,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            Text(title),
          ],
        ),
        TextButton(
          onPressed: onTap,
          child: Text('      $text'),
        ),
      ],
    );
