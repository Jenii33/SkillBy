import 'package:flutter/material.dart';
import 'mbbs.dart';
import 'Bds.dart';
// import 'bhms_page.dart'; 
// import 'bams_page.dart';
// import 'bpt_page.dart';
// import 'bvsc_page.dart';
// import 'bsc_nursing_page.dart';
// import 'more_bsc_page.dart';
// import 'pharmacy_page.dart';

class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  final List<String> courses = [
    "MBBS",
    "BDS",
    "BHMS",
    "BAMS",
    "BPT",
    "B.V.SC. & AH",
    "B.SC. NURSING",
    "More B.SC. Courses",
    "Pharmacy Courses"
  ];

  // Map each course to its respective screen
  final Map<String, Widget> coursePages = {
    "MBBS": Mbbs(),
    "BDS": Bds(),
    // "BHMS": BHMSPage(),
    // "BAMS": BAMSPage(),
    // "BPT": BPTPage(),
    // "B.V.SC. & AH": BVSCPage(),
    // "B.SC. NURSING": BScNursingPage(),
    // "More B.SC. Courses": MoreBScPage(),
    // "Pharmacy Courses": PharmacyPage(),
  };

  Color c1 = Color.fromRGBO(7, 45, 68, 1);
  Color c2 = Color.fromRGBO(6, 68, 107, 1);
  Color c3 = Color.fromRGBO(88, 145, 172, 1);
  Color c4 = Color.fromRGBO(158, 207, 221, 1);
  Color c5 = Color.fromRGBO(208, 215, 225, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        backgroundColor: Colors.white, 
        title: Text("For Your Medical Career", style: TextStyle(color: c1)),
        iconTheme: IconThemeData(color: c1),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Card(
            color: c5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                courses[index],
                style: TextStyle(color: c2, fontSize: 18),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: c2),
              onTap: () {
                
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => coursePages[courses[index]]!,
                  ),
                );
              },
            ), 
          );
        },
      ),
    );
  }
}
