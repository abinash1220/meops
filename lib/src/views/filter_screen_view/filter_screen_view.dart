import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  bool isCheck4 = false;
  bool isCheck5 = false;
  bool isCheck6 = false;
  bool isCheck7 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Filter By",
                style: primaryFont.copyWith(
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                    fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Location",
                  labelStyle: primaryFont.copyWith(color: primaryColor),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: primaryColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: primaryColor)),
                  contentPadding: const EdgeInsets.all(12)),
            ),
          ),
          const SizedBox(
            height: 10,
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
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "Budget",
                  style: primaryFont.copyWith(
                      color: primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          RangeSlider(
            values: _currentRangeValues,
            max: 100,
            divisions: 5,
            activeColor: primaryColor,
            inactiveColor: primaryColor.withOpacity(0.5),
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("0"),
                Text("10K"),
                Text("25K"),
                Text("50K"),
                Text("1L"),
                Text("5L"),
                Text(">5L"),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
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
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "Experience",
                  style: primaryFont.copyWith(
                      color: primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: primaryColor,
                  side: BorderSide(color: primaryColor),
                  value: isCheck1,
                  onChanged: (val) {
                    setState(() {
                      isCheck1 = val!;
                    });
                  }),
              Text(
                "Beginner",
                style: primaryFont.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: primaryColor,
                  side: BorderSide(color: primaryColor),
                  value: isCheck2,
                  onChanged: (val) {
                    setState(() {
                      isCheck2 = val!;
                    });
                  }),
              Text(
                "Intermediate",
                style: primaryFont.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: primaryColor,
                  side: BorderSide(color: primaryColor),
                  value: isCheck3,
                  onChanged: (val) {
                    setState(() {
                      isCheck3 = val!;
                    });
                  }),
              Text(
                "Professional",
                style: primaryFont.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 10,
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
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "Rating",
                  style: primaryFont.copyWith(
                      color: primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                        activeColor: primaryColor,
                        side: BorderSide(color: primaryColor),
                        value: isCheck4,
                        onChanged: (val) {
                          setState(() {
                            isCheck4 = val!;
                          });
                        }),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: primaryColor,
                        side: BorderSide(color: primaryColor),
                        value: isCheck5,
                        onChanged: (val) {
                          setState(() {
                            isCheck5 = val!;
                          });
                        }),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey.withOpacity(0.5),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                        activeColor: primaryColor,
                        side: BorderSide(color: primaryColor),
                        value: isCheck6,
                        onChanged: (val) {
                          setState(() {
                            isCheck6 = val!;
                          });
                        }),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey.withOpacity(0.5),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: primaryColor,
                        side: BorderSide(color: primaryColor),
                        value: isCheck7,
                        onChanged: (val) {
                          setState(() {
                            isCheck7 = val!;
                          });
                        }),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey.withOpacity(0.5),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: primaryColor),
          alignment: Alignment.center,
          child: Text(
            "Search",
            style: primaryFont.copyWith(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
