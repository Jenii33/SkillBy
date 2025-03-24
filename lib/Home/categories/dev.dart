import 'package:flutter/material.dart';

class DevOpsRoadmapScreen extends StatefulWidget {
  @override
  _DevOpsRoadmapScreenState createState() => _DevOpsRoadmapScreenState();
}

class _DevOpsRoadmapScreenState extends State<DevOpsRoadmapScreen> {
  List<Map<String, dynamic>> roadmapSteps = [
    {
      "title": "Understanding DevOps Principles",
      "description": "Learn about DevOps culture, Agile & automation.",
      "icon": Icons.auto_fix_high,
      "completed": true,
    },
    {
      "title": "Basic Linux & Shell Scripting",
      "description": "Master essential Linux commands and scripting.",
      "icon": Icons.terminal,
      "completed": false,
    },
    {
      "title": "Version Control with Git & GitHub",
      "description": "Learn Git basics, branching, and collaborative coding.",
      "icon": Icons.merge_type,
      "completed": false,
    },
    {
      "title": "Cloud Computing Basics",
      "description": "Understand AWS, Azure, GCP, and cloud deployment.",
      "icon": Icons.cloud,
      "completed": false,
    },
    {
      "title": "Containerization with Docker",
      "description": "Create, manage, and deploy containers using Docker.",
      "icon": Icons.apps,
      "completed": false,
    },
    {
      "title": "Kubernetes & Orchestration",
      "description": "Deploy, scale, and manage applications using Kubernetes.",
      "icon": Icons.view_comfy,
      "completed": false,
    },
    {
      "title": "Infrastructure as Code",
      "description": "Use Terraform & Ansible to automate infrastructure.",
      "icon": Icons.build,
      "completed": false,
    },
    {
      "title": "CI/CD Pipelines",
      "description": "Set up Continuous Integration & Deployment with Jenkins, GitHub Actions.",
      "icon": Icons.sync,
      "completed": false,
    },
    {
      "title": "Monitoring & Logging",
      "description": "Use Prometheus, Grafana, and ELK stack for monitoring.",
      "icon": Icons.analytics,
      "completed": false,
    },
    {
      "title": "Advanced DevOps & SRE",
      "description": "Learn Hybrid & Multi-cloud, Security, and SRE best practices.",
      "icon": Icons.security,
      "completed": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DevOps Course Roadmap"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course Overview
            Text(
              "Your Path to Becoming a DevOps Engineer",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Follow this structured roadmap to master DevOps step by step.",
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
                            ? Colors.deepPurple
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
                            ? Colors.deepPurple
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
                  content: Text("Enrolled in DevOps Course!"),
                ));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.deepPurple,
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
