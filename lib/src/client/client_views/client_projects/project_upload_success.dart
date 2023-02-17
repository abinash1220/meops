import 'package:flutter/material.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class ProjectSucessScreen extends StatefulWidget {
  const ProjectSucessScreen({super.key});

  @override
  State<ProjectSucessScreen> createState() => _ProjectSucessScreenState();
}

class _ProjectSucessScreenState extends State<ProjectSucessScreen> {

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/images/Vector (19).png")),
            const SizedBox(height: 30,),
            Text(
                        "Project Uploaded",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
          ],
        ),
      ),
    );
  }
}