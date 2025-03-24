import 'package:flutter/material.dart';

class AndroidRoadmapScreen extends StatefulWidget {
  @override
  _AndroidRoadmapScreenState createState() => _AndroidRoadmapScreenState();
}

class _AndroidRoadmapScreenState extends State<AndroidRoadmapScreen> {
  List<Map<String, dynamic>> roadmapSteps = [
    {
      "title": "Introduction to Android",
      "description": "Learn about Android architecture and ecosystem.",
      "icon": Icons.android,
      "completed": true,
    },
    {
      "title": "Setting up Development Environment",
      "description": "Install Android Studio and set up emulator.",
      "icon": Icons.settings,
      "completed": false,
    },
    {
      "title": "Kotlin & Java Basics",
      "description": "Understand programming basics in Kotlin & Java.",
      "icon": Icons.code,
      "completed": false,
    },
    {
      "title": "Building UI with XML & Jetpack Compose",
      "description": "Design user interfaces using XML and Compose.",
      "icon": Icons.smartphone,
      "completed": false,
    },
    {
      "title": "Activities & Navigation",
      "description": "Manage screen transitions and app navigation.",
      "icon": Icons.navigation,
      "completed": false,
    },
    {
      "title": "Networking & APIs",
      "description": "Fetch data from APIs using Retrofit & Volley.",
      "icon": Icons.cloud_download,
      "completed": false,
    },
    {
      "title": "Database & Storage",
      "description": "Use Room, SQLite, and SharedPreferences.",
      "icon": Icons.storage,
      "completed": false,
    },
    {
      "title": "MVVM & Dependency Injection",
      "description": "Implement clean architecture using MVVM and Dagger/Hilt.",
      "icon": Icons.layers,
      "completed": false,
    },
    {
      "title": "App Deployment & Play Store",
      "description": "Optimize, sign, and publish your app to Play Store.",
      "icon": Icons.cloud_upload,
      "completed": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Android Development Roadmap"),
        backgroundColor: Colors.green[900],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course Overview
            Text(
              "Your Path to Becoming an Android Developer",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Follow this structured roadmap to master Android development step by step.",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),

            // Roadmap Steps
            Expanded(
              child: ListView.builder(
                itemCount: roadmapSteps.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Icon(
                        roadmapSteps[index]['icon'],
                        size: 32,
                        color: roadmapSteps[index]['completed']
                            ? Colors.green
                            : Colors.grey,
                      ),
                      title: Text(
                        roadmapSteps[index]['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(roadmapSteps[index]['description']),
                      trailing: Icon(
                        roadmapSteps[index]['completed']
                            ? Icons.check_circle
                            : Icons.radio_button_unchecked,
                        color: roadmapSteps[index]['completed']
                            ? Colors.green
                            : Colors.grey,
                      ),
                      onTap: () {
                        setState(() {
                          roadmapSteps[index]['completed'] =
                              !roadmapSteps[index]['completed'];
                        });
                      },
                    ),
                  );
                },
              ),
            ),

            // Enroll Button
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Action to enroll in the course
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Enrolled in Android Development Course!"),
                ));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.green[900],
              ),
              child: Center(
                child: Text(
                  "Start Learning Now",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
