import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stroll_ui/providers/provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
// lib/screens/stroll_bonfire_screen.dart

class StrollBonfireScreen extends StatelessWidget {
  const StrollBonfireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // you can Access the TimeProvider using  this context below
    final timeProvider = Provider.of<TimeProvider>(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'lib/images/beach.jpeg',
            fit: BoxFit.cover,
          ),

          // Gradient Overlay for the dark effect i saw in the design
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.4, 0.6],
                ),
              ),
            ),
          ),

          // Content
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Title with dropdown arrow beside the text i saw in the design
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Stroll Bonfire',
                      style: TextStyle(
                        color: Colors.purple[400],
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    PhosphorIcon(
                      PhosphorIcons.caretDown as IconData,
                      color: Colors.purple[400],
                      size: 24,
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Time and Participants Row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Time Display
                      Row(
                        children: [
                          const SizedBox(width: 4),
                          // Using the time from our provider
                          Text(
                            timeProvider.currentTime,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 24),

                      // Participants Count
                      Row(
                        children: [
                          PhosphorIcon(
                            PhosphorIcons.users as IconData,
                            color: Colors.white,
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            '103',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
