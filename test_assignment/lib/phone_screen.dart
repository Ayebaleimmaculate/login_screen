// phone_shape_screen.dart
import 'package:flutter/material.dart';
import 'built_in.dart'; // Import the BuiltIn widget file

class PhoneScreen extends StatelessWidget {
  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Background for outside the phone
      body: Center(
        child: Container(
          width: 300, // Width of the phone
          height: 600, // Height of the phone
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30), // Rounded corners for phone shape
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            children: [
              // Simulating the phone's top area (camera, speaker)
              Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30), // Top rounded corners
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 100,
                    height: 5,
                    color: Colors.grey[300], // Phone speaker simulation
                  ),
                ),
              ),
              // Continuous scrollable content area using ListView.builder
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '92 High Street, London',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                          SizedBox(height: 20),
                          // Including the BuiltIn widget here
                          BuiltIn(), // BuiltIn widget from the imported file
                        ],
                      ),
                    );
                  },
                ),
              ),
              // Simulating the phone's bottom area (home button)
              Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30), // Bottom rounded corners
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle, // Home button simulation
                    ),
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
