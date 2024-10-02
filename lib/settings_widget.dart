import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Logout"),
          Text("Profile"),
          Text("Something else"),
        ],
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