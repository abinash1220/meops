import 'package:flutter/material.dart';
import 'package:meops/src/client/client_views/client_mesage_view/client_message_screen.dart';
import 'package:meops/src/client/client_views/client_profile/client_profile_screen.dart';
import 'package:meops/src/client/client_views/client_projects/client_Project_screen.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/home_view/home_view1.dart';
import 'package:meops/src/views/home_view/my_projects_screen.dart';
import 'package:meops/src/views/message_views/message_screen_views.dart';
import 'package:meops/src/views/profile_views/profile_view.dart';

class ClientBottomNavBar extends StatefulWidget {
  int index;
  ClientBottomNavBar({super.key, this.index = 0});

  @override
  State<ClientBottomNavBar> createState() =>
      _ClientBottomNavBarState();
}

class _ClientBottomNavBarState extends State<ClientBottomNavBar> {
  int _bottomIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setIndex();
  }

  setIndex() {
    setState(() {
      _bottomIndex = widget.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomIndex == 0
          ?const HomeViewScreen()
          : _bottomIndex == 1
              ?const ClientMessageScreen()
              : _bottomIndex == 2
                  ?const ClientProjectScreen()
                  : _bottomIndex == 3
                      ?const ClientProfilePage()
                      :const HomeViewScreen(),
                      
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.2),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _bottomIndex = 0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: _bottomIndex == 0
                        ? primaryColor
                        : primaryColor.withOpacity(0.5),
                    size: 28,
                  ),
                  Text(
                    "Home",
                    style: primaryFont.copyWith(
                        color: _bottomIndex == 0
                            ? primaryColor
                            : primaryColor.withOpacity(0.5),
                        fontSize: 12),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _bottomIndex = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    color: _bottomIndex == 1
                        ? primaryColor
                        : primaryColor.withOpacity(0.5),
                    size: 28,
                  ),
                  Text(
                    "Message",
                    style: primaryFont.copyWith(
                        color: _bottomIndex == 1
                            ? primaryColor
                            : primaryColor.withOpacity(0.5),
                        fontSize: 12),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _bottomIndex = 2;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.list_alt_outlined,
                    color: _bottomIndex == 2
                        ? primaryColor
                        : primaryColor.withOpacity(0.5),
                    size: 28,
                  ),
                  Text(
                    "Projects",
                    style: primaryFont.copyWith(
                        fontSize: 12,
                        color: _bottomIndex == 2
                            ? primaryColor
                            : primaryColor.withOpacity(0.5)),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _bottomIndex = 3;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: _bottomIndex == 3
                        ? primaryColor
                        : primaryColor.withOpacity(0.5),
                    size: 28,
                  ),
                  Text(
                    "Profile",
                    style: primaryFont.copyWith(
                        fontSize: 12,
                        color: _bottomIndex == 3
                            ? primaryColor
                            : primaryColor.withOpacity(0.5)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
