import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Color(0xff353a3e),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.phone_android,
            color: Colors.white,
            size: 30,
          ),
          Stack(
            children: [
              const Icon(
                Icons.local_fire_department_outlined,
                color: Colors.white,
                size: 30,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              const Icon(
                Icons.chat_bubble_outline,
                size: 30,
                color: Colors.white,
              ),
              Positioned(
                right: -7,
                top: -7,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 18,
                    minHeight: 10,
                  ),
                  child: const Center(
                    child: Text(
                      '100',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Icon(
            Icons.person_outline,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
