import 'package:flutter/material.dart';

class BuiltIn extends StatelessWidget {
  const BuiltIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500, // Fixed height for the scrollable area
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Search Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 300, // Set a fixed width for the button
                child: ElevatedButton(
                  onPressed: () {
                    // Handle search button tap here
                    print("Search button clicked!");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Button color
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 8.0),
                      Text(
                        'Search the entire shop',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Additional Button with "50%" styled
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 300, // Same fixed width for the additional button
                child: ElevatedButton(
                  onPressed: () {
                    // Handle additional button tap here
                    print("Additional button clicked!");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 8, 204, 218), // Button color
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Delivery is ',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        WidgetSpan(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                            decoration: BoxDecoration(
                              color: Colors.white, // White background for the "50%"
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: const Text(
                              '50%',
                              style: TextStyle(
                                color: Colors.black, // Black text color for "50%"
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const TextSpan(
                          text: ' cheaper',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20), // Spacing after the buttons

            // Row of images
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space images evenly
                children: [
                  _buildImage('assets/images/download.webp'),
                  _buildImage('assets/images/consoles.avif'),
                  _buildImage('assets/images/idea_2_ecommerce_78ae.png'),
                  _buildImage('assets/images/camera.avif'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create an image widget
  Widget _buildImage(String imagePath) {
    return Container(
      width: 80, // Set the width for the image
      height: 80, // Set the height for the image
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover, // Ensures the image fits well within the container
        ),
        border: Border.all(color: Colors.grey, width: 2), // Border around the image
      ),
    );
  }
}
