import 'package:flutter/material.dart';

class DotNetRoadmapScreen extends StatefulWidget {
  @override
  _DotNetRoadmapScreenState createState() => _DotNetRoadmapScreenState();
}

class _DotNetRoadmapScreenState extends State<DotNetRoadmapScreen> {
  List<Map<String, dynamic>> roadmapSteps = [
    {
      "title": "Introduction to C# Syntax",
      "description": "Learn the basics of C# programming language.",
      "icon": Icons.code,
      "completed": false,
    },
    {
      "title": "Object-Oriented Programming in C#",
      "description": "Master OOP concepts like classes, objects, and inheritance.",
      "icon": Icons.storage,
      "completed": false,
    },
    {
      "title": "Understanding .NET Framework & .NET Core",
      "description": "Explore .NET technologies and their ecosystem.",
      "icon": Icons.architecture,
      "completed": false,
    },
    {
      "title": "Building Web Apps with ASP.NET MVC",
      "description": "Develop dynamic web applications using ASP.NET MVC.",
      "icon": Icons.web,
      "completed": false,
    },
    {
      "title": "REST API Development with ASP.NET Core",
      "description": "Build scalable APIs using ASP.NET Core.",
      "icon": Icons.api,
      "completed": false,
    },
    {
      "title": "Entity Framework Core & LINQ",
      "description": "Learn ORM techniques for database management.",
      "icon": Icons.alarm,
      "completed": false,
    },
    {
      "title": "Microservices Architecture in .NET",
      "description": "Develop scalable microservices using .NET.",
      "icon": Icons.cloud,
      "completed": false,
    },
    {
      "title": "Message Queues (RabbitMQ, Kafka)",
      "description": "Learn about event-driven architectures.",
      "icon": Icons.sync,
      "completed": false,
    },
    {
      "title": "Deploying .NET Apps on Azure",
      "description": "Learn cloud deployment techniques for .NET apps.",
      "icon": Icons.cloud_upload,
      "completed": false,
    },
    {
      "title": "Containerization with Docker & Kubernetes",
      "description": "Use Docker & Kubernetes for .NET applications.",
      "icon": Icons.developer_mode,
      "completed": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(".NET Development Roadmap"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Center(
              child: Column(
                children: [
                  Image.asset("assets/images/dotnet.png", height: 150),
                  SizedBox(height: 10),
                  Text(
                    ".NET Developer Roadmap 💻",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Master C#, ASP.NET, and Cloud Deployment",
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
                            ? Colors.blueGrey[900]
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
                            ? Colors.blueGrey[900]
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

            // Start Learning Button
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Enrolled in .NET Learning Path! 💻"),
                ));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.blueGrey[900],
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
