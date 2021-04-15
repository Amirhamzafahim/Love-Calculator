import 'package:flutter/material.dart';
import 'package:love_calculator/controller/controller.dart';
import 'package:get/get.dart';
import 'package:love_calculator/network/fetchnigdata.dart';

class Homepage extends StatelessWidget {
  TextEditingController fname = TextEditingController();
  TextEditingController sname = TextEditingController();

  var controller = Get.put(Dataget());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Color(0xEE790505),
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                      children: [
                    TextSpan(text: "Calculate\n"),
                    TextSpan(text: "How\n"),
                    TextSpan(text: "Much\n"),
                    TextSpan(text: "Love\n"),
                    TextSpan(text: "Your\n"),
                    TextSpan(text: "Partner\n"),
                  ])),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(blurRadius: 4, color: Color(0xff969696)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      border: InputBorder.none,
                    ),
                    controller: fname,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(blurRadius: 4, color: Color(0xff969696)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Partner Name",
                      border: InputBorder.none,
                    ),
                    controller: sname,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                onTap: () async {
                  fetchdata.getData(fname.text, sname.text);
                },
                child: CircleAvatar(
                  backgroundColor: Color(0xFF940000),
                  radius: 40,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 40,
                  ),
                  // Icons
                ),
              ),
            ),
            GetBuilder<Dataget>(
              init: controller,
              builder: (_) {
                return controller.myFetchdata.percentage == null
                    ? Text("")
                    : Center(
                        child: Text(
                            "${fname.text} And ${sname.text} Love Percentage ${controller.myFetchdata.percentage}"));
              },
            ),
          ],
        ),
      ),
    );
  }

  var fetchdata = FetchData();
}
