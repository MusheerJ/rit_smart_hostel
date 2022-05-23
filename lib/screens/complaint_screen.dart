import 'package:flutter/material.dart';
import 'package:rit_smart_hostel/utils/color_utils.dart';

class ComplaintScreen extends StatelessWidget {
  const ComplaintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 40.0;
    TextEditingController textarea = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2.0,
        title: Text(
          "Electricity",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(4),
                2: FlexColumnWidth(4),
              },
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                        child: Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.kBlackColor.withOpacity(0.7)),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                        child: Text(
                      "Musheer Jamadar",
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.kBlackColor.withOpacity(0.7)),
                    )),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                        child: Text(
                      "Hostel",
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.kBlackColor.withOpacity(0.7)),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                        child: Text(
                      "Chanakya",
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.kBlackColor.withOpacity(0.7)),
                    )),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                        child: Text(
                      "Room",
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.kBlackColor.withOpacity(0.7)),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                        child: Text(
                      "C - 201",
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.kBlackColor.withOpacity(0.7)),
                    )),
                  ),
                ])
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // if you need this
              side: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            clipBehavior: Clip.antiAlias,
            elevation: 0.0,
            child: Column(
              children: [
                ListTile(
                  title: Center(child: const Text('Complaint : Electricity')),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10.0, left: 10.0, top: 5.0),
                  child: TextField(
                    controller: textarea,
                    keyboardType: TextInputType.multiline,
                    maxLines: 10,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(0.1),
                      filled: true,
                      hintText: "Enter your complaint here .....",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.6, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        print(textarea.text);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Complaint sent"),
                        ));
                      },
                      child: Text("Submit Complaint")),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
