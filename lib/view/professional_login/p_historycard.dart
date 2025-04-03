import 'package:flutter/material.dart';
import 'package:learning_stud/model/curved_appbar.dart';
import 'package:learning_stud/view/professional_login/p_bottom_naigatornbar.dart';
import 'package:learning_stud/view/professional_login/p_spoken_next.dart';


class ProfHistoryCard extends StatefulWidget {
  const ProfHistoryCard({super.key});

  @override
  State<ProfHistoryCard> createState() => _ProfHistoryCardState();
}

class _ProfHistoryCardState extends State<ProfHistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: ClipPath(
          clipper: CustomAppBarClipper(),
          child: AppBar(
            title: Text(
              'History Card',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            backgroundColor: Color.fromRGBO(48, 54, 124, 1),
            centerTitle: true,
            leadingWidth: 100,
            leading: IconButton.outlined(
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: ((context) => ProfHomeNext())));
                  //Navigator.pop(context);
                }),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/plane_bg.jpeg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 213, 149, 11)),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Text(
                    "Kiyansh Chetan Jadhav",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(219, 102, 39, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text("Spoken English"),
                          Text("9:00 AM"),
                          Text("Faculty Name"),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 415,
              color: Color.fromRGBO(217, 217, 217, 1),
              // child: DataTable(
              //   columns: [
              //     DataColumn(label: Text("Date")),
              //     DataColumn(label: Text("Topic")),
              //     DataColumn(label: Text("Subtopic")),
              //     DataColumn(label: Text("Faculty")),
              //     DataColumn(label: Text("Teacher")),
              //   ],
              //   rows: [
              //     DataRow(cells: [
              //       DataCell((Text("22/01"))),
              //       DataCell((Text("Introduction"))),
              //       DataCell((Text("Lecture 1"))),
              //       DataCell((Text("Approved"))),
              //       DataCell((Text("Pending")))
              //     ])
              //   ]),
              child: Table(
                border: TableBorder.all(color: Colors.grey),
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(48, 54, 124, 1),
                      ),
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Date",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text("Topic Name",
                            style: TextStyle(
                              color: Colors.white
                            ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text("SubTopic Name",
                            style: TextStyle(
                              color: Colors.white
                            ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text("Faculty Approved",
                            style: TextStyle(
                              color: Colors.white
                            ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Student Approved",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ]),
                  ...List.generate(
                      2,
                      (index) => const TableRow(children: [
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(9),
                                child: Text("22/2/300"),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(9),
                                child: Text("Introduction"),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(9),
                                child: Text("Lecture1"),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(9),
                                child: Text("Approved"),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(9),
                                child: Text("Pending"),
                              ),
                            )
                          ]))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
