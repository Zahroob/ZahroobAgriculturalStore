
import 'package:flutter/material.dart';

class ProfileOptionItem extends StatelessWidget {
  const ProfileOptionItem({super.key, required this.icon, required this.text, required this.onTap});
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 343,
          height: 56,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: 16),
              Icon(icon),
              SizedBox(width: 16),
        
              Text(
                text,
                style: TextStyle(color: const Color(0xFF404040), fontSize: 14),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(size: 20, Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
