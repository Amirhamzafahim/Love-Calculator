import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:love_calculator/controller/controller.dart';
import 'package:love_calculator/model/love_model.dart';

class FetchData {
  Future getData(fname, sname) async {
    var url =
        "https://love-calculator.p.rapidapi.com/getPercentage?fname=$fname&sname=$sname";

    http.Response response = await http.get(url, headers: {
      "x-rapidapi-key": "e208ee5657msh653df32cef1c4b5p1f987cjsnfee4568bb1d9",
    });
    if (response.statusCode == 200) {
      var controller = Get.put(Dataget());

      controller.updateData(lovecalculatorFromJson(response.body));

      return response.body;
    } else {
      throw response.body;
    }
  }
}
