import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final String title;
  const AppHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackButton(),
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.add, color: Colors.red),
        ),
      ],
    );
  }
}
