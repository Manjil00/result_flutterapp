import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentResult extends ConsumerStatefulWidget {
  const StudentResult({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StudentResultState();
}

class _StudentResultState extends ConsumerState<StudentResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RESULT"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          // height: 15,
          child: DataTable(
              headingRowColor:
                  MaterialStateColor.resolveWith((states) => Colors.teal),
              border: TableBorder.all(color: Colors.black),
              columns: const [
                DataColumn(
                  label: Expanded(
                    child: Text("FName",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
                DataColumn(
                    label: Expanded(
                        child: Text("LName",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)))),
                DataColumn(
                  label: Expanded(
                      child: Center(
                    child: Text("Module",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  )),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text("Obtained Marks",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text("Total",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text("Result",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(Center(child: Text("Manjil"))),
                    DataCell(Center(child: Text("Maharjan"))),
                    DataCell(Center(child: Text("Mobile Application"))),
                    DataCell(Center(child: Text("80"))),
                    DataCell(Center(child: Text("100"))),
                    DataCell(Center(child: Text("PASS"))),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
