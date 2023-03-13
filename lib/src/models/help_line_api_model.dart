// To parse this JSON data, do
//
//     final helpLine = helpLineFromJson(jsonString);

import 'dart:convert';

HelpLine helpLineFromJson(String str) => HelpLine.fromJson(json.decode(str));

String helpLineToJson(HelpLine data) => json.encode(data.toJson());

class HelpLine {
    HelpLine({
        required this.message,
        required this.mobile,
        required this.email,
        required this.paymentPolicy,
        required this.termsConditions,
        required this.privacyPolicy,
    });

    String message;
    String mobile;
    String email;
    String paymentPolicy;
    String termsConditions;
    String privacyPolicy;

    factory HelpLine.fromJson(Map<String, dynamic> json) => HelpLine(
        message: json["message"],
        mobile: json["mobile"],
        email: json["email"],
        paymentPolicy: json["payment_policy"],
        termsConditions: json["terms&conditions"],
        privacyPolicy: json["privacy_policy"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "mobile": mobile,
        "email": email,
        "payment_policy": paymentPolicy,
        "terms&conditions": termsConditions,
        "privacy_policy": privacyPolicy,
    };
}
