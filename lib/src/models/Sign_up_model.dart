// To parse this JSON data, do
//
//     final signUp = signUpFromJson(jsonString);

import 'dart:convert';

SignUp signUpFromJson(String str) => SignUp.fromJson(json.decode(str));

String signUpToJson(SignUp data) => json.encode(data.toJson());

class SignUp {
    SignUp({
        required this.message,
        required this.data,
    });

    String message;
    Data data;

    factory SignUp.fromJson(Map<String, dynamic> json) => SignUp(
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    Data({
        required this.username,
        required this.userType,
        required this.isAgreed,
        required this.isCookies,
        required this.contactNumber,
        required this.email,
        required this.displayName,
        required this.firstName,
        required this.otpNumber,
        required this.otpExpiry,
        required this.status,
        required this.updatedAt,
        required this.createdAt,
        required this.id,
        required this.apiToken,
    });

    String username;
    String userType;
    String isAgreed;
    String isCookies;
    String contactNumber;
    String email;
    String displayName;
    String firstName;
    int otpNumber;
    DateTime otpExpiry;
    int status;
    DateTime updatedAt;
    DateTime createdAt;
    int id;
    String apiToken;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        username: json["username"],
        userType: json["user_type"],
        isAgreed: json["isAgreed"],
        isCookies: json["isCookies"],
        contactNumber: json["contact_number"],
        email: json["email"],
        displayName: json["display_name"],
        firstName: json["first_name"],
        otpNumber: json["otp_number"],
        otpExpiry: DateTime.parse(json["otp_expiry"]),
        status: json["status"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
        apiToken: json["api_token"],
    );

    Map<String, dynamic> toJson() => {
        "username": username,
        "user_type": userType,
        "isAgreed": isAgreed,
        "isCookies": isCookies,
        "contact_number": contactNumber,
        "email": email,
        "display_name": displayName,
        "first_name": firstName,
        "otp_number": otpNumber,
        "otp_expiry": otpExpiry.toIso8601String(),
        "status": status,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
        "api_token": apiToken,
    };
}
