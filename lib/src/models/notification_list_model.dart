// To parse this JSON data, do
//
//     final notificationList = notificationListFromJson(jsonString);

import 'dart:convert';

NotificationList notificationListFromJson(String str) => NotificationList.fromJson(json.decode(str));

String notificationListToJson(NotificationList data) => json.encode(data.toJson());

class NotificationList {
    NotificationList({
        required this.notificationData,
        required this.allUnreadCount,
    });

    List<NotificationDatum> notificationData;
    int allUnreadCount;

    factory NotificationList.fromJson(Map<String, dynamic> json) => NotificationList(
        notificationData: List<NotificationDatum>.from(json["notification_data"].map((x) => NotificationDatum.fromJson(x))),
        allUnreadCount: json["all_unread_count"],
    );

    Map<String, dynamic> toJson() => {
        "notification_data": List<dynamic>.from(notificationData.map((x) => x.toJson())),
        "all_unread_count": allUnreadCount,
    };
}

class NotificationDatum {
    NotificationDatum({
        required this.id,
        this.readAt,
        required this.profileImage,
        required this.createdAt,
        required this.data,
    });

    String id;
    dynamic readAt;
    String profileImage;
    CreatedAt createdAt;
    NotifyDataList data;

    factory NotificationDatum.fromJson(Map<String, dynamic> json) => NotificationDatum(
        id: json["id"],
        readAt: json["read_at"],
        profileImage: json["profile_image"],
        createdAt: createdAtValues.map[json["created_at"]]!,
        data: NotifyDataList.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "read_at": readAt,
        "profile_image": profileImage,
        "created_at": createdAtValues.reverse[createdAt],
        "data": data.toJson(),
    };
}

enum CreatedAt { THE_2_DAYS_AGO, THE_3_DAYS_AGO }

final createdAtValues = EnumValues({
    "2 days ago": CreatedAt.THE_2_DAYS_AGO,
    "3 days ago": CreatedAt.THE_3_DAYS_AGO
});

class NotifyDataList {
    NotifyDataList({
        required this.id,
        required this.type,
        required this.subject,
        required this.message,
        required this.iosBadgeType,
        required this.iosBadgeCount,
    });

    int id;
    Subject type;
    Subject subject;
    String message;
    IosBadgeType iosBadgeType;
    int iosBadgeCount;

    factory NotifyDataList.fromJson(Map<String, dynamic> json) => NotifyDataList(
        id: json["id"],
        type: subjectValues.map[json["type"]]!,
        subject: subjectValues.map[json["subject"]]!,
        message: json["message"],
        iosBadgeType: iosBadgeTypeValues.map[json["ios_badgeType"]]!,
        iosBadgeCount: json["ios_badgeCount"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "type": subjectValues.reverse[type],
        "subject": subjectValues.reverse[subject],
        "message": message,
        "ios_badgeType": iosBadgeTypeValues.reverse[iosBadgeType],
        "ios_badgeCount": iosBadgeCount,
    };
}

enum IosBadgeType { INCREASE }

final iosBadgeTypeValues = EnumValues({
    "Increase": IosBadgeType.INCREASE
});

enum Subject { UPDATE_BOOKING_STATUS, ADD_BOOKING }

final subjectValues = EnumValues({
    "add_booking": Subject.ADD_BOOKING,
    "update_booking_status": Subject.UPDATE_BOOKING_STATUS
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
