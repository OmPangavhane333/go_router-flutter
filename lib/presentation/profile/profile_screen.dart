import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isWideScreen = constraints.maxWidth > 600;
            return Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
  radius: isWideScreen ? 50 : 40,
  backgroundImage: NetworkImage('https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250'),
),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'John Doe',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'john.doe@example.com',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      _buildProfileOption(
                        icon: Icons.person,
                        title: 'Personal Information',
                        onTap: () {
                          // Handle Personal Information tap
                        },
                      ),
                      _buildProfileOption(
                        icon: Icons.shopping_bag,
                        title: 'My Orders',
                        onTap: () {
                          // Handle My Orders tap
                        },
                      ),
                      _buildProfileOption(
                        icon: Icons.favorite,
                        title: 'Wishlist',
                        onTap: () {
                          // Handle Wishlist tap
                        },
                      ),
                      _buildProfileOption(
                        icon: Icons.payment,
                        title: 'Payment Methods',
                        onTap: () {
                          // Handle Payment Methods tap
                        },
                      ),
                      _buildProfileOption(
                        icon: Icons.settings,
                        title: 'Settings',
                        onTap: () {
                          // Handle Settings tap
                        },
                      ),
                      _buildProfileOption(
                        icon: Icons.help,
                        title: 'Help & Support',
                        onTap: () {
                          // Handle Help & Support tap
                        },
                      ),
                      _buildProfileOption(
                        icon: Icons.logout,
                        title: 'Logout',
                        onTap: () {
                          // Handle Logout tap
                        },
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildProfileOption({
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
      home: const ProfileScreen(),
    );
  }
}
