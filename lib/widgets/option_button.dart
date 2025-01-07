import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String letter;
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const OptionButton({
    super.key,
    required this.letter,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: const Color(0xff353a3e),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected ? Colors.purple.shade100 : Colors.transparent,
              width: 1.5,
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected ? Colors.purple.shade100 : Colors.white,
                      width: 1.5,
                    ),
                  ),
                  child: Text(
                    letter,
                    style: TextStyle(
                      color: isSelected ? Colors.purple.shade100 : Colors.white,
                      fontSize: 12,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    color: isSelected ? Colors.purple.shade100 : Colors.white,
                    fontSize: 12,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
