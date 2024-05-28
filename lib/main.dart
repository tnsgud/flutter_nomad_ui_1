import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:nomad_ul_clone_1/widgets/event_card.dart';
import 'package:nomad_ul_clone_1/widgets/custom_app_bar.dart';
import 'package:nomad_ul_clone_1/widgets/day_tab.dart';

import 'models/event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final today = DateTime.now();

  final List<Event> events = [
    Event(
      title: 'event1',
      names: ['me', 'you', 'him', 'her'],
      start: DateTime.now(),
      end: DateTime.now(),
    ),
    Event(
      title: 'event1',
      names: ['me', 'you', 'him', 'her'],
      start: DateTime.now(),
      end: DateTime.now(),
    ),
    Event(
      title: 'event1',
      names: ['me', 'you', 'him', 'her'],
      start: DateTime.now(),
      end: DateTime.now(),
    ),
    Event(
      title: 'event1',
      names: ['me', 'you', 'him', 'her'],
      start: DateTime.now(),
      end: DateTime.now(),
    ),
    Event(
      title: 'event1',
      names: ['me', 'you', 'him', 'her'],
      start: DateTime.now(),
      end: DateTime.now(),
    ),
    Event(
      title: 'event1',
      names: ['me', 'you', 'him', 'her'],
      start: DateTime.now(),
      end: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Stack(
                  children: [
                    const CustomAppBar(),
                    Positioned(
                      top: 80,
                      child: Text(
                        '${DateFormat('EEEE').format(today).toUpperCase()} ${today.day}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: DayTab(),
              ),
              const Gap(30),
              Flexible(
                child: ListView.separated(
                  itemCount: events.length,
                  itemBuilder: (context, index) => EventCard(
                    event: events[index],
                  ),
                  separatorBuilder: (context, index) => const Gap(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
