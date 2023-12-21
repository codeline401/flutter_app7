import 'package:flutter/material.dart';
import 'birthdays.dart';
import 'gratitude.dart';
import 'reminders.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List _listePages = [];
  late Widget _currentPage;

  @override
  void initState(){
    super.initState();

    _listePages
      ..add(const Birthdays())
      ..add(const Gratitude())
      ..add(const Reminders());

    _currentPage = const Birthdays();
  }

  void _changePage(int selectedIndex){
    setState(() {
      _currentIndex = selectedIndex;
     _currentPage = _listePages[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _currentPage,
        ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Birthdays',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied),
            label: 'Gratitude'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Reminders'
            ),
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),
    );
  }
}