import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class PaidToView extends StatefulWidget {
  const PaidToView({super.key});

  @override
  State<PaidToView> createState() => _PaidToViewState();
}

class _PaidToViewState extends State<PaidToView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Paid To",
              style: primaryFont.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: primaryColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                        "assets/icons/WhatsApp Image 2022-11-11 at 5.33 (1).png"),
                    Text(
                      "Kissan",
                      style: primaryFont.copyWith(
                          color: primaryColor, fontWeight: FontWeight.w600),
                    ),
                   
                   
                  ],
                ),
                 Text(
                  "Oct 6th 4:56 pm",
                  style:
                      primaryFont.copyWith(fontSize: 10, color: Colors.grey[400]),
                )
              ],
            ),
          ),
         const  SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  "Order Details",
                  style: primaryFont.copyWith(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Image.asset("assets/icons/Rectangle 154.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Diwali Graphics Work",
                          style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: size.width * 0.65,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
                            style: primaryFont.copyWith(fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( 
                      "Order Summary",
                      style: primaryFont.copyWith(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 26,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor.withOpacity(0.3)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Text("Download Invoice",style: primaryFont.copyWith(
                          color: primaryColor
                        ),),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Graphic Design",
                      style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "₹ 1600",
                      style: primaryFont.copyWith(
                          fontWeight: FontWeight.w600, color: primaryColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Logo Design",
                      style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "₹ 1400",
                      style: primaryFont.copyWith(
                          fontWeight: FontWeight.w600, color: primaryColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Logo Animation",
                      style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "₹ 1000",
                      style: primaryFont.copyWith(
                          fontWeight: FontWeight.w600, color: primaryColor),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Divider(
                  thickness: 1.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Amount",
                      style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "₹ 4000",
                      style: primaryFont.copyWith(
                          fontWeight: FontWeight.w600, color: primaryColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Service fee",
                          style:
                              primaryFont.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Text(
                                  'Dummy Text',
                                  style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                content: Text(
                                  '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since''',
                                  style: primaryFont.copyWith(fontSize: 12),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.question_mark,
                                size: 10,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                    Text(
                      "₹ 1000",
                      style: primaryFont.copyWith(
                          fontWeight: FontWeight.w600, color: primaryColor),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Divider(
                  thickness: 1.5,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Offer Code",
                      style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            content: TextField(
                              decoration: InputDecoration(
                                  labelText: "Offer Code",
                                  labelStyle:
                                      primaryFont.copyWith(color: primaryColor),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: primaryColor)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: primaryColor))),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: Text(
                                  'Cancel',
                                  style: primaryFont.copyWith(
                                      color: Colors.grey[300]),
                                ),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('Apply'),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Text(
                        "Enter a Code",
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.w600, color: primaryColor),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Divider(
                  thickness: 1.5,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "₹ 4200",
                      style: primaryFont.copyWith(
                          fontWeight: FontWeight.w600, color: primaryColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Date",
                      style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Oct 24, 2022 (Thursday)",
                      style: primaryFont.copyWith(
                          fontWeight: FontWeight.w600, color: primaryColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
