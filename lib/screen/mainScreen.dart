import 'package:client/Config.dart';
import 'package:flutter/material.dart';

import 'make_an_appointment/MakeAnAppointment.dart';
import 'medical center/MainMedicalCenter.dart';
import 'menu_screen/Menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _selectedIndex == 0
            ? MainMedicalCenter()
            : _selectedIndex == 1
                ? MakeInAppointment()
                : _selectedIndex == 2
                    ? const Menu()
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
        bottomNavigationBar: Container(
          height: 65,
          decoration: BoxDecoration(
            color: Config.shadowColor
          ),
          child: BottomNavigationBar(
            backgroundColor: Config.primaryColor2,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.water_damage,
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.border_color),
                label: 'Записаться',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Меню',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Config.textColorOnPrimary,
            iconSize: 24,
            onTap: _onItemTap,
            elevation: 0,
          ),
        ));
  }
}
