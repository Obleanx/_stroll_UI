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
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 153, 138, 194),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.chat_bubble_outline,
                    size: 30,
                    color: Colors.white,
                  ),
                  Container(
                    height: 10,
                    width: 15,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 153, 138, 194),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(3)),
                    child: const Center(
                      child: Text(
                        '100',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 6,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
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
