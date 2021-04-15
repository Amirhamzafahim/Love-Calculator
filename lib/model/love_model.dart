// To parse this JSON data, do
//
//     final lovecalculator = lovecalculatorFromJson(jsonString);

import 'dart:convert';

Lovecalculator lovecalculatorFromJson(String str) => Lovecalculator.fromJson(json.decode(str));

String lovecalculatorToJson(Lovecalculator data) => json.encode(data.toJson());

class Lovecalculator {
    Lovecalculator({
        this.fname,
        this.sname,
        this.percentage,
        this.result,
    });

    String fname;
    String sname;
    String percentage;
    String result;

    factory Lovecalculator.fromJson(Map<String, dynamic> json) => Lovecalculator(
        fname: json["fname"],
        sname: json["sname"],
        percentage: json["percentage"],
        result: json["result"],
    );

    Map<String, dynamic> toJson() => {
        "fname": fname,
        "sname": sname,
        "percentage": percentage,
        "result": result,
    };
}
