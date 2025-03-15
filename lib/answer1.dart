import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Text(
          "โปรไฟล์ผู้ใช้",
          style: TextStyle(color: Color.fromARGB(255, 9, 9, 9)),
        ),
        backgroundColor: const Color.fromARGB(255, 54, 150, 252),
      ),
      body: const Center(
        child: ProfileCard(
              name: "ชื่อผู้ใช้: John Doe",
              position: "อีเมล:johndoe@example.com",
              email: "การตั้งค่า",
              phone: "เปลี่ยนรหัส",
              instagram: "ความเป็นส่วนตัว",
          imageUrl:
              'https://www.kasandbox.org/programming-images/avatars/leaf-blue.png',
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
      color: const Color.fromARGB(255, 0, 0, 0),
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
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
                color: Color.fromARGB(255, 250, 248, 248),
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
                Icons.phone, phone, const Color.fromARGB(255, 63, 113, 249)),
            contactInfo(
              Icons.location_on, instagram,const Color.fromARGB(255, 63, 113, 249)),
          ],
        ),
      ),
    );
  }

  Widget contactInfo(IconData icon, String text, Color iconColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
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
