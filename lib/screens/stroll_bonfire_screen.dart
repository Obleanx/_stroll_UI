import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:line_icons/line_icons.dart';
import 'package:stroll_ui/widgets/circle_icon.dart';
import 'package:stroll_ui/widgets/option_button.dart';
import 'package:stroll_ui/providers/time_provider.dart';
import 'package:stroll_ui/widgets/custom_bottom_nav_bar.dart';
import 'package:stroll_ui/providers/time_option_provider.dart';

class StrollBonfireScreen extends StatelessWidget {
  const StrollBonfireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final timeProvider = Provider.of<TimeProvider>(context);
    final optionProvider = Provider.of<TimeOptionProvider>(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/images/beach.jpeg',
            fit: BoxFit.cover,
          ),
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black,
                    Colors.black,
                    Colors.transparent,
                  ],
                  stops: [0.5, 0.86, 6],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70),
                _buildHeader(context),
                const SizedBox(height: 10),
                _buildTimeAndParticipants(timeProvider),
                const SizedBox(height: 220),
                _buildProfileSection(optionProvider),
                const SizedBox(height: 5),
                _buildQuestionSection(optionProvider),
                const SizedBox(height: 10),
                _buildOptionsGrid(optionProvider),
                const Spacer(),
                _buildBottomSection(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Stroll Bonfire',
            style: TextStyle(
              color: Colors.purple.shade100,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 3),
          Icon(
            LineIcons.angleDown,
            color: Colors.purple.shade100,
            size: 15,
          ),
        ],
      ),
    );
  }

  Widget _buildTimeAndParticipants(TimeProvider timeProvider) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(
                LineIcons.clock,
                color: Colors.white,
                size: 20,
              ),
              Text(
                timeProvider.currentTime,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Row(
            children: [
              Icon(
                LineIcons.user,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(width: 4),
              Text(
                '103',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSection(TimeOptionProvider provider) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Circle Avatar
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(255, 82, 89, 93),
                width: 2,
              ),
            ),
            child: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('lib/images/dinner.jpeg'),
            ),
          ),
          const SizedBox(width: 8),
          const Expanded(
            // Prevents overflow if the text is long
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align text to start
              children: [
                Text(
                  'Angeline, 28',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10), // Space between name and question
                Text(
                  'What is your favourite time of the day?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionSection(TimeOptionProvider provider) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'mine is definitely ${provider.selectedOption}.',
            style: TextStyle(
              color: Colors.purple.shade100,
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionsGrid(TimeOptionProvider provider) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              OptionButton(
                letter: 'A',
                text: 'The peace in the mornings',
                isSelected: provider.selectedIndex == 0,
                onPressed: () =>
                    provider.updateSelection('The peace in the mornings', 0),
              ),
              const SizedBox(width: 15),
              OptionButton(
                letter: 'B',
                text: 'The magical golden hours',
                isSelected: provider.selectedIndex == 1,
                onPressed: () =>
                    provider.updateSelection('The magical golden hours', 1),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              OptionButton(
                letter: 'C',
                text: 'Wind-down time after dinners',
                isSelected: provider.selectedIndex == 2,
                onPressed: () =>
                    provider.updateSelection('Wind-down time after dinners', 2),
              ),
              const SizedBox(width: 15),
              OptionButton(
                letter: 'D',
                text: 'The serenity past midnight',
                isSelected: provider.selectedIndex == 3,
                onPressed: () =>
                    provider.updateSelection('The serenity past midnight', 3),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSection() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Pick your options',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'see who has a similar mind',
                style: TextStyle(
                  color: Colors.purple.shade100,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Spacer(),
          CircleIcon(
            icon: LineIcons.microphone,
            color: Colors.purple.shade100,
          ),
          const SizedBox(width: 10),
          CircleIcon(
            icon: LineIcons.arrowRight,
            color: Colors.purple.shade100,
          ),
        ],
      ),
    );
  }
}
