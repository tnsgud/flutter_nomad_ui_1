import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DayTab extends StatelessWidget {
  DayTab({super.key});

  final DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 7,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Row(
            children: [
              const Text(
                'TODAY',
                style: TextStyle(color: Colors.white, fontSize: 45),
              ),
              const Gap(5),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const Gap(10),
            ],
          );
        }

        final text =
            today.add(Duration(days: index)).day.toString().padLeft(2, '0');

        return Padding(
          padding: EdgeInsets.only(right: index == 6 ? 0 : 15),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 45,
            ),
          ),
        );
      },
    );
  }
}
