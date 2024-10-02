import 'package:flutter/material.dart';
import 'package:navigation_bar_training/home_widget.dart';
import 'package:navigation_bar_training/settings_widget.dart';
import 'package:navigation_bar_training/weather_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Widget> widgets = [
    const HomeWidget(),
    const WeatherWidget(),
    const SettingsWidget(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (int index) {
            currentIndex = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.house),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.ac_unit),
              label: "Weather",
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
        body: widgets[currentIndex],
      ),
    );
  }
}

// class HomeWidget extends StatelessWidget {
//   const HomeWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Hello World!'),
//     );
//   }
// }

// class WeatherWidget extends StatelessWidget {
//   const WeatherWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Icon(
//         Icons.umbrella,
//         size: 96,
//       ),
//     );
//   }
// }

// class SettingsWidget extends StatelessWidget {
//   const SettingsWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("Logout"),
//           Text("Profile"),
//           Text("Something else"),
//         ],
//       ),
//     );
//   }
// }