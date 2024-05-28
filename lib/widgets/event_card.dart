import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:gap/gap.dart';
import 'package:nomad_ul_clone_1/models/event.dart';

class EventCard extends StatelessWidget {
  EventCard({
    super.key,
    required this.event,
  });

  final Event event;
  final Color _bgColor =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  late final Color _color =
      _bgColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        event.start.hour.toString().padLeft(2, '0'),
                        style: TextStyle(
                          color: _color,
                          fontSize: 30,
                          height: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        event.start.minute.toString().padLeft(2, '0'),
                        style: TextStyle(
                          color: _color,
                          fontSize: 20,
                          height: 0.8,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '|',
                        style: TextStyle(
                          color: _color,
                          fontSize: 25,
                          height: 2,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        event.end.hour.toString().padLeft(2, '0'),
                        style: TextStyle(
                          color: _color,
                          fontSize: 30,
                          height: 0.8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        event.end.minute.toString().padLeft(2, '0'),
                        style: TextStyle(
                          color: _color,
                          height: 1,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(5),
                Flexible(
                  flex: 7,
                  child: Column(
                    children: [
                      Text(
                        event.title,
                        style: TextStyle(
                          color: _color,
                          fontSize: 60,
                          height: 0.8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  for (var name in event.names)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        name,
                        style: TextStyle(
                          color: _color,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
