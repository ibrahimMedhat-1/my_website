import 'package:my_website/src/core/config/app_imports.dart';

Widget contactMeWidget({
  required context,
  required Widget icon,
  required String title,
  required String text,
  required Function() onTap,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 30, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: TextButton(
              onPressed: onTap,
              child: Text(
                text,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
