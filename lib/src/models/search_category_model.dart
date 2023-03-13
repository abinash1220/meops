// To parse this JSON data, do
//
//     final searchCategory = searchCategoryFromJson(jsonString);

import 'dart:convert';

SearchCategory searchCategoryFromJson(String str) => SearchCategory.fromJson(json.decode(str));

String searchCategoryToJson(SearchCategory data) => json.encode(data.toJson());

class SearchCategory {
    SearchCategory({
        required this.pagination,
        required this.data,
    });

    Pagination pagination;
    List<SearchCategoryData> data;

    factory SearchCategory.fromJson(Map<String, dynamic> json) => SearchCategory(
        pagination: Pagination.fromJson(json["pagination"]),
        data: List<SearchCategoryData>.from(json["data"].map((x) => SearchCategoryData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class SearchCategoryData {
    SearchCategoryData({
        required this.id,
        required this.name,
        required this.status,
        required this.description,
        required this.isFeatured,
        required this.color,
        required this.categoryImage,
        required this.categoryExtension,
        required this.services,
    });

    int id;
    String name;
    int status;
    String description;
    int isFeatured;
    String color;
    String categoryImage;
    String categoryExtension;
    int services;

    factory SearchCategoryData.fromJson(Map<String, dynamic> json) => SearchCategoryData(
        id: json["id"],
        name: json["name"]?? "",
        status: json["status"]?? "",
        description: json["description"]?? "",
        isFeatured: json["is_featured"]?? "",
        color: json["color"]?? "",
        categoryImage: json["category_image"]?? "",
        categoryExtension: json["category_extension"]?? "",
        services: json["services"]?? "",
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "description": description,
        "is_featured": isFeatured,
        "color": color,
        "category_image": categoryImage,
        "category_extension": categoryExtension,
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
