import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/home_view/home_bottom_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  int index;
  BottomNavBar({super.key, this.index = 0});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
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
    return Container(
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
            onTap: (){
              setState(() {
                _bottomIndex = 0;
              });
              Get.to(HomeBottomNavigationBar(index: 0,));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  color: _bottomIndex == 0 ?  primaryColor : primaryColor.withOpacity(0.5),
                  size: 28,
                ),
                Text(
                  "Home",
                  style: primaryFont.copyWith(color:  _bottomIndex == 0 ?  primaryColor : primaryColor.withOpacity(0.5), fontSize: 12),
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
                      :  primaryColor.withOpacity(0.5),
                  size: 28,
                ),
                Text(
                  "Message",
                  style: primaryFont.copyWith(
                      color: _bottomIndex == 1
                          ? primaryColor
                          :  primaryColor.withOpacity(0.5), fontSize: 12),
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
                      :  primaryColor.withOpacity(0.5),
                  size: 28,
                ),
                Text(
                  "Projects",
                  style: primaryFont.copyWith(
                      fontSize: 12, color:  _bottomIndex == 2
                          ? primaryColor
                          :  primaryColor.withOpacity(0.5)),
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
                      :  primaryColor.withOpacity(0.5),
                  size: 28,
                ),
                Text(
                  "Profile",
                  style: primaryFont.copyWith(
                      fontSize: 12, color:  _bottomIndex == 3
                          ? primaryColor
                          : primaryColor.withOpacity(0.5)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
