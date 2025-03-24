import 'package:flutter/material.dart';

class ItRoadmapScreen extends StatefulWidget {
  @override
  _ItRoadmapScreenState createState() => _ItRoadmapScreenState();
}

class _ItRoadmapScreenState extends State<ItRoadmapScreen> {
  List<Map<String, dynamic>> roadmapSteps = [
    {
      "title": "Introduction to Computers & OS",
      "description": "Learn the basics of computer systems and operating systems.",
      "icon": Icons.computer,
      "completed": false,
    },
    {
      "title": "Basic Networking Concepts",
      "description": "Understand LAN, WAN, IP Addressing, and how the internet works.",
      "icon": Icons.wifi,
      "completed": false,
    },
    {
      "title": "Cybersecurity Fundamentals",
      "description": "Explore basic security principles and threats.",
      "icon": Icons.security,
      "completed": false,
    },
    {
      "title": "Programming Basics",
      "description": "Start with Python, Java, or C++ programming.",
      "icon": Icons.code,
      "completed": false,
    },
    {
      "title": "Databases & SQL Basics",
      "description": "Learn how to store and retrieve data using SQL.",
      "icon": Icons.storage,
      "completed": false,
    },
    {
      "title": "Cloud Computing",
      "description": "Get started with AWS, Azure, and Google Cloud.",
      "icon": Icons.cloud,
      "completed": false,
    },
    {
      "title": "Linux & Windows Administration",
      "description": "Manage systems and configure servers.",
      "icon": Icons.admin_panel_settings,
      "completed": false,
    },
    {
      "title": "Advanced Networking",
      "description": "Learn about Firewalls, VPNs, and DNS.",
      "icon": Icons.router,
      "completed": false,
    },
    {
      "title": "Ethical Hacking & Cybersecurity",
      "description": "Understand security threats and hacking techniques.",
      "icon": Icons.hiking,
      "completed": false,
    },
    {
      "title": "IT Project Management",
      "description": "Explore Agile, DevOps, and Scrum methodologies.",
      "icon": Icons.business,
      "completed": false,
    },
    {
      "title": "Enterprise IT Solutions",
      "description": "Learn about ERP, CRM, and ITIL frameworks.",
      "icon": Icons.settings,
      "completed": false,
    },
    {
      "title": "AI & Machine Learning in IT",
      "description": "Discover AI applications in IT systems.",
      "icon": Icons.smart_toy,
      "completed": false,
    },
    {
      "title": "Career Paths in IT",
      "description": "Choose a career: Cloud Engineer, IT Manager, Security Analyst.",
      "icon": Icons.work,
      "completed": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IT Roadmap"),
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
                  Image.asset("assets/images/IT.png", height: 150),
                  SizedBox(height: 10),
                  Text(
                    "Information Technology Learning Path 💻",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Start your journey in IT with this roadmap!",
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

            // Enroll Button
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Action to enroll in the course
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Enrolled in IT Learning Path!"),
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
