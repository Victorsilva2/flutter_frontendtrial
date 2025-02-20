import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
          seedColor: const Color.fromARGB(255, 243, 188, 129), // UTRGV Orange as main theme color
          primary: const Color.fromARGB(255, 238, 178, 114), // Orange
          secondary: const Color(0xFF0C8443), // Green
          surface: const Color.fromARGB(0, 10, 10, 11), // Dark Gray
          onPrimary: Colors.white, // Text color on Orange
          onSecondary: Colors.white, // Text color on Green
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
        title: const Text('Stables - UTRGV Parking App',
            style: TextStyle(color: Colors.white)),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor:
            const Color.fromARGB(255, 241, 200, 157), // UTRGV Orange
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: 'Rewards'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Account'), 
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Welcome to Home!",
        style: TextStyle(fontSize: 20, color: Color(0xFFFF8200)),
      ),
    );
  }
}

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Rewards Page",
        style: TextStyle(fontSize: 20, color: Color(0xFFFF8200)), // UTRGV Orange
      ),
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _controller;
  final LatLng _initialPosition = LatLng(26.3082, -98.1740); // UTRGV

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _controller = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vaquero Map",style: TextStyle(color: Color.fromARGB(255, 254, 253, 253))),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _initialPosition,
          zoom: 15.0, // Adjust zoom level for better visibility
        ),
      ),
    );
  }
}
// avatar notes for context of changing 
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Profile Information Section
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
  radius: 50, // Adjust the size of the avatar
  backgroundColor: Color(0xFFFF8200), // Optional: background color for better visibility
  child: const Icon(
    Icons.account_circle, // Built-in icon for user profile
    size: 80, // Adjust the size of the icon
    color: Color.fromARGB(255, 255, 255, 255), // You can customize the color, here it’s set to green
  ),
)

        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Victor Silva', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('victorsilva@utrgv.edu', style: TextStyle(fontSize: 18, color: Colors.grey)),
        ),

        // settings here
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Text('Settings', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          title: const Text('random'),
          onTap: () {
            
          },
        ),
        ListTile(
          title: const Text('random'),
          onTap: () {
            
          },
        ),
        ListTile(
          title: const Text('random'),
          onTap: () {
            
          },
        ),
        
        
        ListTile(
          title: const Text('random'),
          onTap: () {
            
          },
        ),
        ListTile(
          title: const Text('random'),
          onTap: () {
            
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Text('App Version 1.0', style: TextStyle(fontSize: 16, color: Colors.grey)),
        ),
      ],
    );
  }
}

