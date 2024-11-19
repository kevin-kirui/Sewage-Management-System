import 'package:flutter/material.dart';

class DataCollectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Collection')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Site Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Frequency'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration:
                  InputDecoration(labelText: 'Infrastructure Condition'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to save data
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
