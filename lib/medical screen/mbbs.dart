import 'package:flutter/material.dart';

class Mbbs extends StatelessWidget {
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
            "MBBS",
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
      body: Container(
        height: h,
        width: w,
        color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderCard(),
              SizedBox(height: 20),
              _buildEligibilityCriteria(),
              SizedBox(height: 20),
              _buildExamSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderCard() {
    return Card(
      color: c5,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "MBBS (Bachelor of Medicine\nand Bachelor of Surgery)",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: c1,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "MBBS is the most popular and designated degree of doctors.\n"
              "These are the two bachelor degrees in one domain as "
              "The Bachelor of Medicine and The Bachelor of Surgery.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: c2),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEligibilityCriteria() {
    return Card(
      color: c5,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "MBBS Eligibility Criteria",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: c1),
            ),
            SizedBox(height: 10),
            _buildDataTable(),
          ],
        ),
      ),
    );
  }

  Widget _buildDataTable() {
    return DataTable(
      headingRowColor: MaterialStateColor.resolveWith((states) => c2),
      headingTextStyle: TextStyle(color: c5, fontWeight: FontWeight.bold),
      dataRowColor:
          MaterialStateColor.resolveWith((states) => c5.withOpacity(0.5)),
      columns: [
        DataColumn(label: Text("Parameters")),
        DataColumn(label: Text("Details")),
      ],
      rows: [
        _buildDataRow("Qualifying Exam",
            "10+2 with English, Physics, Chemistry, Biology"),
        _buildDataRow("Minimum Age Limit", "17 years"),
        _buildDataRow("Aggregate Marks", "General/OBC: 60%, SC/ST/OPH: 50%"),
        _buildDataRow(
            "Nationality", "Indian, NRI, OCI, PIO, Foreign Nationals"),
      ],
    );
  }

  DataRow _buildDataRow(String param, String detail) {
    return DataRow(cells: [
      DataCell(Text(param,
          style: TextStyle(color: c2, fontWeight: FontWeight.bold))),
      DataCell(Text(detail,
          style: TextStyle(fontSize: 12, color: c2.withOpacity(0.5)))),
    ]);
  }

  Widget _buildExamSection() {
    return Card(
      color: c5,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "National Level Medical Entrance Exams",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: c1),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text(
                "NEET (National Eligibility Cum Entrance Exam)",
                style: TextStyle(fontSize: 16, color: c2.withOpacity(0.7)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
