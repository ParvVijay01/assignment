import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/features/Home/home.dart';
import 'package:test1/features/auth/login/login_screen.dart';
import 'package:test1/features/home2/home_2.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [HomeScreen(), HomeScreen2()];

  void _onItemTapped(int index) {
    if (index == 2) {
      _showLogoutDialog();
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text("Logout"),
            content: const Text("Are you sure you want to logout?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                  _logout(); // Perform logout
                },
                child: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
    );
  }

  void _logout() {
    print("User Logged Out");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex < 2 ? _screens[_selectedIndex] : Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:
            _selectedIndex < 2
                ? _selectedIndex
                : 0, // Prevent selection highlight on logout
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            label: 'Home 1',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.houseUser),
            label: 'Home 2',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.rightFromBracket,
              color: Colors.blue.shade200,
            ),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}
