import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isWideScreen = constraints.maxWidth > 600;
            return ListView(
              children: [
                _buildSettingsOption(
                  icon: Icons.person,
                  title: 'Account Settings',
                  onTap: () {
                    // Handle Account Settings tap
                  },
                ),
                _buildSettingsOption(
                  icon: Icons.notifications,
                  title: 'Notification Preferences',
                  onTap: () {
                    // Handle Notification Preferences tap
                  },
                ),
                _buildSettingsOption(
                  icon: Icons.language,
                  title: 'Language',
                  onTap: () {
                    // Handle Language tap
                  },
                ),
                if (isWideScreen)
                  _buildSettingsOption(
                    icon: Icons.security,
                    title: 'Security',
                    onTap: () {
                      // Handle Security tap
                    },
                  ),
                if (isWideScreen)
                  _buildSettingsOption(
                    icon: Icons.data_usage,
                    title: 'Data Usage',
                    onTap: () {
                      // Handle Data Usage tap
                    },
                  ),
                if (isWideScreen)
                  _buildSettingsOption(
                    icon: Icons.info,
                    title: 'About',
                    onTap: () {
                      // Handle About tap
                    },
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildSettingsOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eMart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SettingScreen(),
    );
  }
}
