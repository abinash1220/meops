// To parse this JSON data, do
//
//     final verifyOtp = verifyOtpFromJson(jsonString);

import 'dart:convert';

VerifyOtp verifyOtpFromJson(String str) => VerifyOtp.fromJson(json.decode(str));

String verifyOtpToJson(VerifyOtp data) => json.encode(data.toJson());

class VerifyOtp {
    VerifyOtp({
        required this.message,
        required this.data,
    });

    String message;
    RegisterData data;

    factory VerifyOtp.fromJson(Map<String, dynamic> json) => VerifyOtp(
        message: json["message"],
        data: RegisterData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
    };
}

class RegisterData {
    RegisterData({
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

    factory RegisterData.fromJson(Map<String, dynamic> json) => RegisterData(
        username: json["username"],
        userType: json["user_type"],
        isAgreed: json["isAgreed"],
        isCookies: json["isCookies"],
        contactNumber: json["contact_number"],
        email: json["email"] ?? "",
        displayName: json["display_name"],
        firstName: json["first_name"],
        otpNumber: json["otp_number"] ?? 0000,
        otpExpiry: DateTime.parse(json["otp_expiry"]),
        status: json["status"] ?? 0,
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"] ?? 0,
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
