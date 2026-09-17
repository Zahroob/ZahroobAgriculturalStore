import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -45,
      child: Container(
        width: 343,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('assets/image/myphoto.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Mahmoud Zahroob",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "MahmoudZahroob@gmail.com",
                  style: TextStyle(fontSize: 11, color: Color(0xFF9E9E9E)),
                ),
              ],
            ),
            SizedBox(width: 16),
            IconButton(onPressed: () {}, icon: Icon(Icons.edit_square)),
          ],
        ),
      ),
    );
  }
}
