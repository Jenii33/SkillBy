import 'package:flutter/material.dart';

class IOSRoadmapScreen extends StatefulWidget {
  @override
  _IOSRoadmapScreenState createState() => _IOSRoadmapScreenState();
}

class _IOSRoadmapScreenState extends State<IOSRoadmapScreen> {
  List<Map<String, dynamic>> roadmapSteps = [
    {
      "title": "Introduction to iOS & Swift",
      "description": "Learn about iOS development and the Swift programming language.",
      "icon": Icons.apple,
      "completed": true,
    },
    {
      "title": "Setting Up Xcode & iOS Simulator",
      "description": "Install and configure Xcode and the iOS simulator for development.",
      "icon": Icons.computer,
      "completed": false,
    },
    {
      "title": "Swift Basics: Variables & Functions",
      "description": "Understand Swift syntax, data types, and functions.",
      "icon": Icons.code,
      "completed": false,
    },
    {
      "title": "Working with UI & Auto Layout",
      "description": "Design UI using Storyboards and implement responsive layouts.",
      "icon": Icons.design_services,
      "completed": false,
    },
    {
      "title": "Navigation & View Controllers",
      "description": "Learn about navigation controllers and multiple screens.",
      "icon": Icons.layers,
      "completed": false,
    },
    {
      "title": "Networking & API Calls",
      "description": "Work with REST APIs using Alamofire and URLSession.",
      "icon": Icons.cloud_download,
      "completed": false,
    },
    {
      "title": "Core Data & SQLite",
      "description": "Implement local database storage with Core Data and SQLite.",
      "icon": Icons.storage,
      "completed": false,
    },
    {
      "title": "Authentication & Firebase",
      "description": "Handle user authentication with Firebase and OAuth.",
      "icon": Icons.lock,
      "completed": false,
    },
    {
      "title": "Push Notifications & Messaging",
      "description": "Enable push notifications and real-time messaging in your app.",
      "icon": Icons.notifications,
      "completed": false,
    },
    {
      "title": "Advanced UI & Animations",
      "description": "Build smooth animations and custom UI effects.",
      "icon": Icons.animation,
      "completed": false,
    },
    {
      "title": "MVVM Architecture & Best Practices",
      "description": "Structure your app using the MVVM architecture pattern.",
      "icon": Icons.architecture,
      "completed": false,
    },
    {
      "title": "Publishing to the App Store",
      "description": "Prepare and publish your app on the App Store.",
      "icon": Icons.publish,
      "completed": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("iOS Development Roadmap"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course Overview
            Center(
              child: Column(
                children: [
                  Image.asset("assets/images/ios.png", height: 150),
                  SizedBox(height: 10),
                  Text(
                    "iOS Development Learning Path 🍏",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Master iOS App Development from Beginner to Advanced!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
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
                            ? Colors.black
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
                            ? Colors.black
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
                  content: Text("Enrolled in iOS Development Course!"),
                ));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.black,
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
