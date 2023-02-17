import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:meops/src/client/client_views/client_home_view/recent_works.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/choose_avathar_view/choose_avathar_view.dart';
import 'package:meops/src/views/favorite_screen_view/favorites_view.dart';
import 'package:meops/src/views/profile_views/settings_screen.dart';
import 'package:meops/src/views/profile_views/view_rewards.dart';
import 'package:meops/src/views/transaction_and_saved_card_views/transactions_and_saved_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool isSwitchOn = false;
  bool isSwitchOn1 = false;
  bool isSwitchOn2 = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: Container(
          height: 160,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.to(() =>const  ChooseAvatharView());
                        },
                        child:
                           const  Image(image: AssetImage("assets/images/prf4.png"))),
                    const SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rajesh",
                            style: primaryFont.copyWith(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Chennai, India",
                            style: primaryFont.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(const ViewRewardsScreen());
                                },
                                child: Container(
                                  height: 25,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      child: Row(
                                        children: [
                                          const Image(
                                              image: AssetImage(
                                                  "assets/icons/Vector (9).png")),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "View Reviews",
                                            style: primaryFont.copyWith(
                                              color: primaryColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                "4.0 (46)",
                                style: primaryFont.copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(const SettingsScreen());
                      },
                      child: const Image(
                          image: AssetImage("assets/icons/Group (3).png")),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Container(
              height: 120,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 202, 201, 201),
                        blurRadius: 5.0),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const Image(image: AssetImage("assets/icons/Group 613.png")),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Skills",
                          style: primaryFont.copyWith(
                            color: primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 38,
                        width: 120,
                        decoration: BoxDecoration(
                          color: const Color(0xffDECCFF),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Graphic Design",
                            style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 38,
                        width: 90,
                        decoration: BoxDecoration(
                          color: const Color(0xffDECCFF),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Animation",
                            style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 38,
                        width: 117,
                        decoration: BoxDecoration(
                          color: const Color(0xffDECCFF),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Video Editing",
                            style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Container(
              height: 115,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 202, 201, 201),
                        blurRadius: 5.0),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const Image(image: AssetImage("assets/icons/Group 431.png")),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Description",
                          style: primaryFont.copyWith(
                            color: primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      """Lorem Ipsum is simply dummy text of the printing\nand typesetting industry. Lorem Ipsum has been\nthe industry's standard dummy..See More""",
                      style: primaryFont.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Container(
              height: 200,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 202, 201, 201),
                        blurRadius: 5.0),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        const Image(
                            image: AssetImage("assets/icons/Vector (11).png")),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Rate Card",
                          style: primaryFont.copyWith(
                            color: primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 100,
                            child: Center(
                              child: Text(
                                "Services",
                                style: primaryFont.copyWith(
                                  color: primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 100,
                            child: Center(
                              child: Text(
                                "Amount",
                                style: primaryFont.copyWith(
                                  color: primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                        width: 100,
                        child: InkWell(
                          onTap: () {
                            _dialogBuilder(context);
                          },
                          child: Row(
                            children: [
                              Text(
                                "Negotiation",
                                style: primaryFont.copyWith(
                                  color: primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              const Image(
                                  image: AssetImage(
                                      "assets/icons/Group 1013.png")),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 100,
                        child: Center(
                          child: Text(
                            "Graphic Design",
                            style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        width: 100,
                        child: Center(
                          child: Text(
                            "₹1400/Day",
                            style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        width: 100,
                        child: Center(
                          child: FlutterSwitch(
                            height: 22,
                            width: 38,
                            padding: 2,
                            activeColor: primaryColor,
                            value: isSwitchOn,
                            onToggle: (value) {
                              setState(() {
                                isSwitchOn = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 100,
                        child: Center(
                          child: Text(
                            "Animation",
                            style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        width: 100,
                        child: Center(
                          child: Text(
                            "₹500/Hour",
                            style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        width: 100,
                        child: Center(
                          child: FlutterSwitch(
                            height: 22,
                            width: 38,
                            padding: 2,
                            activeColor: primaryColor,
                            value: isSwitchOn1,
                            onToggle: (value) {
                              setState(() {
                                isSwitchOn1 = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 100,
                        child: Center(
                          child: Text(
                            "Video Editing",
                            style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        width: 100,
                        child: Center(
                          child: Text(
                            "₹2600/Day",
                            style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        width: 100,
                        child: Center(
                          child: FlutterSwitch(
                            height: 22,
                            width: 38,
                            padding: 2,
                            activeColor: primaryColor,
                            value: isSwitchOn2,
                            onToggle: (value) {
                              setState(() {
                                isSwitchOn2 = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {
                Get.to(() =>const TransactionsAndSavedCards());
              },
              child: Container(
                height: 50,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 202, 201, 201),
                          blurRadius: 5.0),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Image(
                              image: AssetImage("assets/icons/Group 719.png")),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Payments",
                            style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children:const  [
                          Image(
                              image: AssetImage("assets/icons/Group 628.png")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 202, 201, 201),
                        blurRadius: 5.0),
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.to(const FavoritesView());
                      },
                      child: Row(
                        children: [
                          const Image(
                              image: AssetImage("assets/icons/Vector (10).png")),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Favourites",
                            style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children:const  [
                        Image(image: AssetImage("assets/icons/Group 628.png")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: InkWell(
              onTap: (){
                Get.to(const RecentWorks());
              },
              child: Container(
                height: 50,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 202, 201, 201),
                          blurRadius: 5.0),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Image(image: AssetImage("assets/icons/Group 622.png")),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Recent Work",
                            style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children:const [
                          Image(image: AssetImage("assets/icons/Group 628.png")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Dummy Text',
            style: TextStyle(color: Color(0xff5800FF)),
          ),
          content: const Text(
            """Lorem Ipsum is simply dummy text of\nthe printing and typesetting industry.\nLorem Ipsum has been the industry's\nstandard dummy text ever since""",
            style: TextStyle(fontSize: 14),
          ),
          actions: <Widget>[
            Text(
              "Ok",
              style: primaryFont.copyWith(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        );
      },
    );
  }
}
