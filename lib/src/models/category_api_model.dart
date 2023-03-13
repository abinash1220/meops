// To parse this JSON data, do
//
//     final categoryList = categoryListFromJson(jsonString);

import 'dart:convert';

CategoryList categoryListFromJson(String str) => CategoryList.fromJson(json.decode(str));

String categoryListToJson(CategoryList data) => json.encode(data.toJson());

class CategoryList {
    CategoryList({
        required this.pagination,
        required this.data,
    });

    Pagination pagination;
    List<ListCategory> data;

    factory CategoryList.fromJson(Map<String, dynamic> json) => CategoryList(
        pagination: Pagination.fromJson(json["pagination"]),
        data: List<ListCategory>.from(json["data"].map((x) => ListCategory.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class ListCategory {
    ListCategory({
        required this.id,
        required this.name,
        required this.status,
        this.description,
        required this.isFeatured,
        required this.color,
        required this.categoryImage,
        required this.categoryExtension,
        required this.services,
    });

    int id;
    String name;
    int status;
    String? description;
    int isFeatured;
    String color;
    String categoryImage;
    String categoryExtension;
    int services;

    factory ListCategory.fromJson(Map<String, dynamic> json) => ListCategory(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        description: json["description"],
        isFeatured: json["is_featured"],
        color: json["color"],
        categoryImage: json["category_image"],
        categoryExtension: json["category_extension"],
        services: json["services"],
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
