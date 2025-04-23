import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String courseName;
  final String imageUrl;
  final bool isAsset;

  DetailsPage({required this.courseName, required this.imageUrl, this.isAsset = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(courseName)),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400),
            child: Card(
              elevation: 6,
              margin: EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Hero(
                    tag: 'course-image',
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                      child: isAsset
                          ? Image.asset(imageUrl, height: 200, fit: BoxFit.cover)
                          : Image.network(imageUrl, height: 200, fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          courseName,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Explore the world of mobile applications using Flutter. Learn how to design and develop cross-platform apps with real-world use cases and UI/UX best practices.",
                          style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
