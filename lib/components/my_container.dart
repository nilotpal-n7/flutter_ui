import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String text;
  final bool isSelected;
  final IconData icon;

  const MyContainer({
    super.key,
    required this.text,
    required this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFFF2E7) : Colors.white,
          border: Border.all(
            color: isSelected ? Color(0xFF713100) : Colors.grey.shade300,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor:
                  isSelected ? Color(0xFF713100) : Colors.grey.shade200,
              child: Icon(
                icon,
                size: 20,
                color: isSelected ? Colors.white : Colors.grey.shade800,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Color(0xFF713100) : Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
