import 'package:flutter/material.dart';
import 'package:my_website/shared/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ibrahim Medhat',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 550,
            decoration: BoxDecoration(
              color: color,
            ),
            child: Row(
              children: [
                // Name and Data
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HELLO',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'I\'m',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Text(
                              ' Ibrahim',
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Medhat',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold, fontSize: 70),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Software Engineer / Developer',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              child: const Text('Hire Me'),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: const Text('Portfolio'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Profile Picture
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 80),
                        child: CircleAvatar(
                          minRadius: 80,
                          maxRadius: 120,
                          backgroundImage: AssetImage('assets/profileImage.jpg'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
