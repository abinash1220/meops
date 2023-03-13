// To parse this JSON data, do
//
//     final subCategoryList = subCategoryListFromJson(jsonString);

import 'dart:convert';

SubCategoryList subCategoryListFromJson(String str) => SubCategoryList.fromJson(json.decode(str));

String subCategoryListToJson(SubCategoryList data) => json.encode(data.toJson());

class SubCategoryList {
    SubCategoryList({
        required this.pagination,
        required this.data,
    });

    Pagination pagination;
    List<SubCategoryData> data;

    factory SubCategoryList.fromJson(Map<String, dynamic> json) => SubCategoryList(
        pagination: Pagination.fromJson(json["pagination"]),
        data: List<SubCategoryData>.from(json["data"].map((x) => SubCategoryData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class SubCategoryData {
    SubCategoryData({
        required this.id,
        required this.name,
        required this.status,
        this.description,
        required this.isFeatured,
        this.color,
        required this.categoryId,
        required this.categoryImage,
        required this.categoryExtension,
        required this.categoryName,
        required this.services,
        this.isSelected = false,
    });

    int id;
    String name;
    int status;
    dynamic description;
    int isFeatured;
    dynamic color;
    int categoryId;
    String categoryImage;
    String categoryExtension;
    String categoryName;
    int services;
    bool isSelected;

    factory SubCategoryData.fromJson(Map<String, dynamic> json) => SubCategoryData(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        description: json["description"] ?? "",
        isFeatured: json["is_featured"],
        color: json["color"] ?? "",
        categoryId: json["category_id"],
        categoryImage: json["category_image"],
        categoryExtension: json["category_extension"],
        categoryName: json["category_name"],
        services: json["services"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "description": description,
        "is_featured": isFeatured,
        "color": color,
        "category_id": categoryId,
        "category_image": categoryImage,
        "category_extension": categoryExtension,
        "category_name": categoryName,
        "services": services,
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
    int perPage;
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
        nextPage: json["next_page"]?? "",
        previousPage: json["previous_page"]?? "",
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
