import 'dart:io';

class RegisterKycModel {
  int? userId;
  String? name;
  String? pincode;
  String? cityId;
  String? address;
  String? contactNumber;
  String? email;
  File? aadhaarcardFront;
  File? aadhaarcardBack;
  File? pancardFront;
  File? panCardBack;
  String? bankAccountType;
  String? bankAccountName;
  String? bankAccountNumber;
  String? ifscCode;
  String? dob;
  String? education;
  String? profession;
  String? experience;
  List<SkillsLevelModel>? skillsList;

  RegisterKycModel(
      {this.userId,
      this.name,
      this.pincode,
      this.cityId,
      this.aadhaarcardBack,
      this.aadhaarcardFront,
      this.address,
      this.bankAccountName,
      this.bankAccountNumber,
      this.bankAccountType,
      this.contactNumber,
      this.dob,
      this.education,
      this.email,
      this.experience,
      this.ifscCode,
      this.panCardBack,
      this.pancardFront,
      this.profession,
      this.skillsList});
}

class SkillsLevelModel {
  String? skill;
  String? skillLevel;
  String? workLocation;
  String? describeYourWork;
  String? rateCard;
  String? name;
  String? link;
  File? workImages;

  SkillsLevelModel(
      {this.describeYourWork,
      this.link,
      this.name,
      this.rateCard,
      this.skill,
      this.skillLevel,
      this.workImages,
      this.workLocation});
}
