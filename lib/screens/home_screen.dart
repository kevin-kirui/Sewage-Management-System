import 'package:flutter/material.dart';
import 'data_collection_screen.dart';
import 'reports_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NSMS Dashboard')),
      body: Stack(
        children: [
          // Full-screen background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/Green.jpg', // Path to your image
              fit: BoxFit.cover, // Fit the image to cover the entire screen
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors
                      .grey, // Fallback background color if image fails to load
                  child: Center(
                    child: Icon(Icons.error, size: 100, color: Colors.red),
                  ),
                );
              },
            ),
          ),
          // Overlay the content (buttons) on top of the image
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DataCollectionScreen()),
                  ),
                  child: Text('Data Collection'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReportsScreen()),
                  ),
                  child: Text('Reports & Insights'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
