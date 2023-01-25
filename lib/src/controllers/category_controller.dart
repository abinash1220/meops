import 'package:get/get.dart';

class CategoryController extends GetxController {
  List<CategoryShowModel> popularOnList = [
    CategoryShowModel(
        image: "assets/images/grid_image (14).png",
        name: "Mani",
        profileImage: "assets/icons/profile_pic.png",
        categoryName: "Photography",
        isLiked: true),
    CategoryShowModel(
        image: "assets/images/grid_image (1).png",
        name: "Kannan",
        profileImage: "assets/icons/profile_images (2).png",
        categoryName: "Illustrations",
        isLiked: false),
    CategoryShowModel(
        image: "assets/images/grid_image (3).png",
        name: "Kannan",
        profileImage: "assets/icons/profile_images (2).png",
        categoryName: "Illustrations",
        isLiked: false),
    CategoryShowModel(
        image: "assets/images/grid_image (5).png",
        name: "Shyam",
        profileImage: "assets/icons/profile_pic.png",
        categoryName: "Performer",
        isLiked: false),
  ];

  List<CategoryShowModel> topAnimationList = [
    CategoryShowModel(
        image: "assets/images/grid_image (11).png",
        name: "Mani",
        profileImage: "assets/icons/profile_pic.png",
        categoryName: "Gaming",
        isLiked: true),
    CategoryShowModel(
        image: "assets/images/grid_image (15).png",
        name: "Kannan",
        profileImage: "assets/icons/profile_images (2).png",
        categoryName: "Animation",
        isLiked: false),
   
    CategoryShowModel(
        image: "assets/images/grid_image (2).png",
        name: "Angel",
        profileImage: "assets/icons/profile_pic.png",
        categoryName: "Animation",
        isLiked: false),
    CategoryShowModel(
        image: "assets/images/grid_image (4).png",
        name: "Shyam",
        profileImage: "assets/icons/profile_pic.png",
        categoryName: "Gaming",
        isLiked: false),
    CategoryShowModel(
        image: "assets/images/grid_image (8).png",
        name: "Milton",
        profileImage: "assets/icons/profile_images (2).png",
        categoryName: "Animation",
        isLiked: false),
        CategoryShowModel(
        image: "assets/images/grid_image (6).png",
        name: "Anupam",
        profileImage: "assets/icons/profile_pic.png",
        categoryName: "Animation",
        isLiked: false),
         CategoryShowModel(
        image: "assets/images/grid_image (15).png",
        name: "Kannan",
        profileImage: "assets/icons/profile_images (2).png",
        categoryName: "Animation",
        isLiked: false),
   
  ];


   List<CategoryShowModel> photographyList = [
    CategoryShowModel(
        image: "assets/images/Photography_img (2).png",
        name: "Mani",
        profileImage: "assets/icons/ph_profile.png",
        categoryName: "4.0(46)",
        isLiked: true),
    CategoryShowModel(
        image: "assets/images/Photography_img (1).png",
        name: "Mahesh",
        profileImage: "assets/icons/ph_profile.png",
        categoryName: "3.0(78)",
        isLiked: false),
    
  ];
}

class CategoryShowModel {
  String image;
  String name;
  String profileImage;
  String categoryName;
  bool isLiked;

  CategoryShowModel({
    required this.image,
    required this.name,
    required this.profileImage,
    required this.categoryName,
    required this.isLiked,
  });
}
