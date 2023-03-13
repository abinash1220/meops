// To parse this JSON data, do
//
//     final getProfessionalList = getProfessionalListFromJson(jsonString);

import 'dart:convert';

GetProfessionalList getProfessionalListFromJson(String str) => GetProfessionalList.fromJson(json.decode(str));

String getProfessionalListToJson(GetProfessionalList data) => json.encode(data.toJson());

class GetProfessionalList {
    GetProfessionalList({
        required this.status,
        required this.pagination,
        required this.data,
    });

    String status;
    Pagination pagination;
    List<ProfessionalListData> data;

    factory GetProfessionalList.fromJson(Map<String, dynamic> json) => GetProfessionalList(
        status: json["status"],
        pagination: Pagination.fromJson(json["pagination"]),
        data: List<ProfessionalListData>.from(json["data"].map((x) => ProfessionalListData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "pagination": pagination.toJson(),
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class ProfessionalListData {
    ProfessionalListData({
        required this.id,
        required this.username,
        required this.firstName,
        this.lastName,
        required this.email,
        required this.userType,
        required this.contactNumber,
        this.countryId,
        this.stateId,
        required this.cityId,
        this.providerId,
        required this.address,
        this.playerId,
        required this.status,
        required this.displayName,
        this.providertypeId,
        required this.isFeatured,
        required this.timeZone,
        this.lastNotificationSeen,
        this.emailVerifiedAt,
        required this.createdAt,
        required this.updatedAt,
        this.stripeId,
        this.pmType,
        this.pmLastFour,
        this.trialEndsAt,
        this.loginType,
        this.serviceAddressId,
        this.uid,
        this.handymantypeId,
        required this.isSubscribe,
        this.socialImage,
        required this.isAvailable,
        this.designation,
        this.lastOnlineTime,
        required this.isAgreed,
        required this.isCookies,
        required this.pincode,
        required this.aadhaarcardFront,
        required this.aadhaarcardBack,
        required this.pancardFront,
        required this.pancardBack,
        required this.bankAccountType,
        required this.bankAccountName,
        required this.bankAccountNumber,
        required this.bankReaccountNumber,
        required this.bankIfscCode,
        this.dateOfBirth,
        required this.education,
        required this.profession,
        required this.experience,
        required this.skillDetails,
        required this.workLink,
        required this.workFiles,
    });

    int id;
    String username;
    String firstName;
    dynamic lastName;
    String email;
    String userType;
    String contactNumber;
    dynamic countryId;
    dynamic stateId;
    int cityId;
    dynamic providerId;
    String address;
    dynamic playerId;
    int status;
    String displayName;
    dynamic providertypeId;
    int isFeatured;
    String timeZone;
    dynamic lastNotificationSeen;
    dynamic emailVerifiedAt;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic stripeId;
    dynamic pmType;
    dynamic pmLastFour;
    dynamic trialEndsAt;
    dynamic loginType;
    dynamic serviceAddressId;
    dynamic uid;
    dynamic handymantypeId;
    int isSubscribe;
    dynamic socialImage;
    int isAvailable;
    dynamic designation;
    dynamic lastOnlineTime;
    String isAgreed;
    String isCookies;
    String pincode;
    String aadhaarcardFront;
    String aadhaarcardBack;
    String pancardFront;
    String pancardBack;
    String bankAccountType;
    String bankAccountName;
    String bankAccountNumber;
    String bankReaccountNumber;
    String bankIfscCode;
    dynamic dateOfBirth;
    String education;
    String profession;
    String experience;
    List<SkillDetail> skillDetails;
    List<WorkLink> workLink;
    String workFiles;

    factory ProfessionalListData.fromJson(Map<String, dynamic> json) => ProfessionalListData(
        id: json["id"],
        username: json["username"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        userType: json["user_type"],
        contactNumber: json["contact_number"],
        countryId: json["country_id"],
        stateId: json["state_id"],
        cityId: json["city_id"],
        providerId: json["provider_id"],
        address: json["address"],
        playerId: json["player_id"],
        status: json["status"],
        displayName: json["display_name"],
        providertypeId: json["providertype_id"],
        isFeatured: json["is_featured"],
        timeZone: json["time_zone"],
        lastNotificationSeen: json["last_notification_seen"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        stripeId: json["stripe_id"],
        pmType: json["pm_type"],
        pmLastFour: json["pm_last_four"],
        trialEndsAt: json["trial_ends_at"],
        loginType: json["login_type"],
        serviceAddressId: json["service_address_id"],
        uid: json["uid"],
        handymantypeId: json["handymantype_id"],
        isSubscribe: json["is_subscribe"],
        socialImage: json["social_image"],
        isAvailable: json["is_available"],
        designation: json["designation"],
        lastOnlineTime: json["last_online_time"],
        isAgreed: json["isAgreed"],
        isCookies: json["isCookies"],
        pincode: json["pincode"],
        aadhaarcardFront: json["aadhaarcard_front"],
        aadhaarcardBack: json["aadhaarcard_back"],
        pancardFront: json["pancard_front"],
        pancardBack: json["pancard_back"],
        bankAccountType: json["bank_accountType"],
        bankAccountName: json["bank_accountName"],
        bankAccountNumber: json["bank_accountNumber"],
        bankReaccountNumber: json["bank_reaccountNumber"],
        bankIfscCode: json["bank_ifsc_code"],
        dateOfBirth: json["date_of_birth"],
        education: json["education"],
        profession: json["profession"],
        experience: json["experience"],
        skillDetails: List<SkillDetail>.from(json["skill_details"].map((x) => SkillDetail.fromJson(x))),
        workLink: List<WorkLink>.from(json["work_link"].map((x) => WorkLink.fromJson(x))),
        workFiles: json["work_files"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "user_type": userType,
        "contact_number": contactNumber,
        "country_id": countryId,
        "state_id": stateId,
        "city_id": cityId,
        "provider_id": providerId,
        "address": address,
        "player_id": playerId,
        "status": status,
        "display_name": displayName,
        "providertype_id": providertypeId,
        "is_featured": isFeatured,
        "time_zone": timeZone,
        "last_notification_seen": lastNotificationSeen,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "stripe_id": stripeId,
        "pm_type": pmType,
        "pm_last_four": pmLastFour,
        "trial_ends_at": trialEndsAt,
        "login_type": loginType,
        "service_address_id": serviceAddressId,
        "uid": uid,
        "handymantype_id": handymantypeId,
        "is_subscribe": isSubscribe,
        "social_image": socialImage,
        "is_available": isAvailable,
        "designation": designation,
        "last_online_time": lastOnlineTime,
        "isAgreed": isAgreed,
        "isCookies": isCookies,
        "pincode": pincode,
        "aadhaarcard_front": aadhaarcardFront,
        "aadhaarcard_back": aadhaarcardBack,
        "pancard_front": pancardFront,
        "pancard_back": pancardBack,
        "bank_accountType": bankAccountType,
        "bank_accountName": bankAccountName,
        "bank_accountNumber": bankAccountNumber,
        "bank_reaccountNumber": bankReaccountNumber,
        "bank_ifsc_code": bankIfscCode,
        "date_of_birth": dateOfBirth,
        "education": education,
        "profession": profession,
        "experience": experience,
        "skill_details": List<dynamic>.from(skillDetails.map((x) => x.toJson())),
        "work_link": List<dynamic>.from(workLink.map((x) => x.toJson())),
        "work_files": workFiles,
    };
}

class SkillDetail {
    SkillDetail({
        required this.skill,
        required this.skillLevel,
        required this.workLocation,
        required this.describeYourWork,
        required this.rateCard,
    });

    String skill;
    String skillLevel;
    String workLocation;
    String describeYourWork;
    String rateCard;

    factory SkillDetail.fromJson(Map<String, dynamic> json) => SkillDetail(
        skill: json["skill"],
        skillLevel: json["skill_level"],
        workLocation: json["work_location"],
        describeYourWork: json["describe_your_work"],
        rateCard: json["rate_card"],
    );

    Map<String, dynamic> toJson() => {
        "skill": skill,
        "skill_level": skillLevel,
        "work_location": workLocation,
        "describe_your_work": describeYourWork,
        "rate_card": rateCard,
    };
}

class WorkLink {
    WorkLink({
        required this.name,
        required this.link,
    });

    String name;
    String link;

    factory WorkLink.fromJson(Map<String, dynamic> json) => WorkLink(
        name: json["name"],
        link: json["link"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "link": link,
    };
}

class Pagination {
    Pagination({
        required this.totalItems,
        required this.perPage,
        required this.currentPage,
        required this.totalPages,
        required this.from,
        required this.to,
        this.nextPage,
        this.previousPage,
    });

    int totalItems;
    String perPage;
    int currentPage;
    int totalPages;
    int from;
    int to;
    dynamic nextPage;
    dynamic previousPage;

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        totalItems: json["total_items"],
        perPage: json["per_page"],
        currentPage: json["currentPage"],
        totalPages: json["totalPages"],
        from: json["from"],
        to: json["to"],
        nextPage: json["next_page"],
        previousPage: json["previous_page"],
    );

    Map<String, dynamic> toJson() => {
        "total_items": totalItems,
        "per_page": perPage,
        "currentPage": currentPage,
        "totalPages": totalPages,
        "from": from,
        "to": to,
        "next_page": nextPage,
        "previous_page": previousPage,
    };
}
