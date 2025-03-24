import 'package:flutter/material.dart';

class MachineLearningRoadmapScreen extends StatefulWidget {
  @override
  _MachineLearningRoadmapScreenState createState() =>
      _MachineLearningRoadmapScreenState();
}

class _MachineLearningRoadmapScreenState
    extends State<MachineLearningRoadmapScreen> {
  List<Map<String, dynamic>> roadmapSteps = [
    {
      "title": "Linear Algebra (Vectors, Matrices, Eigenvalues)",
      "description": "Learn the foundation of ML through matrices and vectors.",
      "icon": Icons.calculate,
      "completed": false,
    },
    {
      "title": "Probability & Statistics",
      "description": "Understand probability distributions, Bayes theorem, and more.",
      "icon": Icons.bar_chart,
      "completed": false,
    },
    {
      "title": "Gradient Descent & Optimization",
      "description": "Learn how models minimize errors through optimization.",
      "icon": Icons.trending_down,
      "completed": false,
    },
    {
      "title": "Python Basics & Data Handling",
      "description": "Master Python, NumPy, and Pandas for ML data manipulation.",
      "icon": Icons.code,
      "completed": false,
    },
    {
      "title": "Data Visualization (Matplotlib & Seaborn)",
      "description": "Learn how to visualize ML data effectively.",
      "icon": Icons.insert_chart,
      "completed": false,
    },
    {
      "title": "Supervised & Unsupervised Learning",
      "description": "Understand regression, classification, and clustering.",
      "icon": Icons.school,
      "completed": false,
    },
    {
      "title": "Neural Networks & Deep Learning",
      "description": "Study artificial neurons and deep learning architectures.",
      "icon": Icons.memory,
      "completed": false,
    },
    {
      "title": "Convolutional Neural Networks (CNNs)",
      "description": "Learn how CNNs power computer vision applications.",
      "icon": Icons.image,
      "completed": false,
    },
    {
      "title": "Recurrent Neural Networks (RNNs, LSTMs)",
      "description": "Explore sequence models for NLP & time-series data.",
      "icon": Icons.timeline,
      "completed": false,
    },
    {
      "title": "Model Deployment & MLOps",
      "description": "Deploy ML models using Flask, FastAPI, and cloud services.",
      "icon": Icons.cloud_upload,
      "completed": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Machine Learning Roadmap"),
        backgroundColor: Colors.deepPurple,
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
                  Image.asset("assets/images/machine_learning.png", height: 150),
                  SizedBox(height: 10),
                  Text(
                    "Machine Learning Roadmap 🤖",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "From Basics to Deployment",
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
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Enrolled in ML Learning Path! 🤖"),
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
