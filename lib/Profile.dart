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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8E8EE),
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 8, 8, 8),
      ),
      body: const Center(
        child: ProfileCard(
          name: "Patchareeporn Saratee",
          position: "Student",
          email: "Saratee_p@silpakorn.edu",
          phone: "094992145",
          instagram: "@patcha_ig", 
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQLJ9soIpZRXkRkvIgdywdwNLlLa34FB7SvQ&s',
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String position;
  final String email;
  final String phone;
  final String instagram;
  final String imageUrl;

  const ProfileCard({
    super.key,
    required this.name,
    required this.position,
    required this.email,
    required this.phone,
    required this.instagram, 
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 17, 17, 17),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 8,
      shadowColor: const Color.fromARGB(255, 175, 170, 172),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imageUrl),
              backgroundColor: Colors.grey[200],
            ),
            const SizedBox(height: 12),
            Text(
              name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              position,
              style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 166, 164, 165)),
            ),
            const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 230, 222, 227),
                height: 20),
            contactInfo(
                Icons.email, email, const Color.fromARGB(255, 63, 113, 249)),
            contactInfo(
                Icons.phone, phone, const Color.fromARGB(255, 43, 255, 6)),
            contactInfo(Icons.camera_alt, instagram,
                const Color.fromARGB(255, 255, 0, 144)), // เพิ่ม Instagram
          ],
        ),
      ),
    );
  }

  Widget contactInfo(IconData icon, String text, Color iconColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20, color: iconColor),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
