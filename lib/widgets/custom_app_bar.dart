import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/avatar.png'),
        ),
        Icon(
          Icons.add,
          color: Colors.white,
          size: 50,
        ),
      ],
    );
  }
}
