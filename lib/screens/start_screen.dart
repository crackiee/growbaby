import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // The gradient is now the background for the entire screen
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF81C7F5), Color(0xFF3C92D5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            // Top Section (Logo, Title, Button)
            // This part sits on the gradient background.
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 60, 24, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // App Logo and Title
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Icon(
                        Icons.child_care,
                        color: Colors.white,
                        size: 32,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Baby Health Tracker',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Subtitle Text
                  const Text(
                    'Track your baby\'s growth,\nmilestones, and health with ease.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 32),
                  // Get Started Button
                  ElevatedButton(
                    onPressed: () {
                      // Handle button tap
                      print('Get Started button tapped!');
                      // You can add navigation logic here, e.g.:
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF3C92D5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Bottom White "Sheet" Section
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  // This border radius creates the upward curve
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16), // Add some space at the top inside the sheet
                        const Text(
                          'Key features',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Grid of feature tiles
                        GridView.count(
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          children: const [
                            FeatureTile(
                              icon: Icons.trending_up,
                              label: 'Growth Tracking',
                            ),
                            FeatureTile(
                              icon: Icons.restaurant_menu,
                              label: 'Food Log',
                            ),
                            FeatureTile(
                              icon: Icons.calendar_today,
                              label: 'Milestones',
                            ),
                             FeatureTile(
                              icon: Icons.local_hospital,
                              label: 'Vaccinations',
                            ),
                             FeatureTile(
                              icon: Icons.nightlight_round,
                              label: 'Sleep Patterns',
                            ),
                             FeatureTile(
                              icon: Icons.medical_services,
                              label: 'Doctor Visits',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Reusable widget for the feature tiles
class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String label;

  const FeatureTile({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: const Color(0xFFE8F5E9), // Light green background
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              )
            ]
          ),
          child: Icon(
            icon,
            color: const Color(0xFF4CAF50), // Green icon color
            size: 30,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}