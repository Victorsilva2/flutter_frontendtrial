// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Stables UTRGV Parking App',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 183, 87, 58)),
//         useMaterial3: true,
//       ),
//       home: const MainScreen(),
//     );
//   }
// }

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _selectedIndex = 0;

//   // List of screens for navigation
//   final List<Widget> _screens = [
//     const HomeScreen(),
//     const RewardsScreen(),
//     const MapScreen(),
//     const SettingsScreen(),
//     const Account(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Stables - UTRGV Parking App')),
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         type: BottomNavigationBarType.fixed, // Ensures labels are visible
//         selectedItemColor: Colors.deepOrange,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: 'Rewards'),
//           BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
//           BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Account'),
//         ],
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text("Welcome to Home!"));
//   }
// }

// class RewardsScreen extends StatelessWidget {
//   const RewardsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text("Rewards Page"));
//   }
// }

// class MapScreen extends StatelessWidget {
//   const MapScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text("Map Page"));
//   }
// }

// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text("Settings Page"));
//   }
// }

// class Account extends StatelessWidget {
//   const Account({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text("User Account Page"));
//   }
// }
//
// ADDING COLOR BELOW 
//

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stables UTRGV Parking App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF8200), // UTRGV Orange as main theme color
          primary: const Color(0xFFFF8200),   // Orange
          secondary: const Color(0xFF0C8443), // Green
          surface: const Color(0xFF4B4F54),   // Dark Gray
          onPrimary: Colors.white,            // Text color on Orange
          onSecondary: Colors.white,          // Text color on Green
        ),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const RewardsScreen(),
    const MapScreen(),
    const SettingsScreen(),
    const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF8200), // UTRGV Orange
        title: const Text('Stables - UTRGV Parking App', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              setState(() {
                _selectedIndex = 3; // Switch to Settings tab
              });
            },
          ),
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFFFF8200), // UTRGV Orange
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: 'Rewards'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Account'),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Welcome to Home!",
        style: TextStyle(fontSize: 20, color: const Color(0xFFFF8200)), // UTRGV Green
      ),
    );
  }
}

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Rewards Page",
        style: TextStyle(fontSize: 20, color: const Color(0xFFFF8200)), // UTRGV Orange
      ),
    );
  }
}

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Map Page",
        style: TextStyle(fontSize: 20, color: const Color(0xFFFF8200)), // Dark Gray
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Settings Page",
        style: TextStyle(fontSize: 20, color: const Color(0xFFFF8200)), // UTRGV Green
      ),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "User Account Page",
        style: TextStyle(fontSize: 20, color: const Color(0xFFFF8200)), // UTRGV Orange
      ),
    );
  }
}
