import 'package:flutter/material.dart';

class Bds extends StatefulWidget {
  @override
  State<Bds> createState() => _BdsState();
}

class _BdsState extends State<Bds> {
  Color c1 = Color.fromRGBO(7, 45, 68, 1);
  Color c2 = Color.fromRGBO(6, 68, 107, 1);
  Color c3 = Color.fromRGBO(88, 145, 172, 1);
  Color c4 = Color.fromRGBO(158, 207, 221, 1);  
  Color c5 = Color.fromRGBO(208, 215, 225, 1);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          title: Text(
            "BDS",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: c1),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: InkWell(
              child: Icon(Icons.arrow_back, color: c1),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            onPressed: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(),
        child: Container(
          height: h,
          width: w,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Center(
                  child: Text(
                    "BDS (Bachelor of Dental Surgery)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: c1,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                /// Description
                Text(
                  "BDS course is focused on training students with knowledge and skills related to general dental practices to treat, prevent and diagnose oral diseases.",
                  style: TextStyle(fontSize: 16, color: c2),
                ),

                SizedBox(height: 20),

                Text(
                  "Eligibility",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: c1,
                  ),
                ),
                SizedBox(height: 5),

                bulletPoint(
                    "Passing senior secondary examination with an aggregate score of 50% from a recognised board or equivalent examination."),
                bulletPoint(
                    "It is required to have Physics, Chemistry, Biology and English as subjects in 12th class."),

                SizedBox(height: 10),
                Text(
                  "The admissions are taken by conducting entrance tests. The candidates with their senior secondary examination results awaited are welcomed to apply for this course.",
                  style: TextStyle(fontSize: 14),
                ),

                SizedBox(height: 20),

                Text(
                  "Entrance Exams",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: c1,
                  ),
                ),
                SizedBox(height: 5),

                entranceExam(
                  "AICET BDS",
                  "This test is conducted for admissions in the field of dental science for admission in the private colleges for Chhattisgarh. Questions from Physics, Botany, Zoology and Chemistry",
                ),
                entranceExam(
                  "NEET",
                  "NEET is a qualifying entrance exam for BDS admissions in various government and private colleges in India.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bulletPoint(String text, {Color color = Colors.blue}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•", style: TextStyle(fontSize: 18)),
          Expanded(child: Text(text, style: TextStyle(fontSize: 16))),
        ],
      ),
    );
  }

  Widget entranceExam(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: c2),
          children: [
            TextSpan(
              text: "$title: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: description),
          ],
        ),
      ),
    );
  }
}
