import 'package:flutter/material.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/widgets/payment_widget/enter_upi_id_prompt.dart';

class PaymentScreenView extends StatefulWidget {
  const PaymentScreenView({super.key});

  @override
  State<PaymentScreenView> createState() => _PaymentScreenViewState();
}

class _PaymentScreenViewState extends State<PaymentScreenView> {
  int index = 10;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.mobile_friendly,
                  color: Colors.white,
                  size: 28,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "Payment",
                  style: primaryFont.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
      body: Container(
        width: size.width,
        decoration:const BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Choose Payment Method",
                style: primaryFont.copyWith(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/Group 729.png"),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              color: index == 0 ? primaryColor : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: primaryColor)),
                          child: index == 0
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : Container(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/Vector (4).png"),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              color: index == 1 ? primaryColor : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: primaryColor)),
                          child: index == 1
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : Container(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: (){
                   setState(() {
                    index = 2;
                  });
                },
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/Paytm.png"),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              color: index == 2 ? primaryColor : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: primaryColor)),
                          child: index == 2
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : Container(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: (){
                  setState(() {
                    index = 3;
                  });

                },
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/Upi.png"),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              color: index == 3 ? primaryColor : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: primaryColor)),
                          child: index == 3
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : Container(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: (){
                  setState(() {
                    index = 4;
                  });
                },
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/Group 733.png"),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              color: index == 4 ? primaryColor : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: primaryColor)),
                          child: index == 4
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : Container(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: (){
                  upiModelBottomSheet(size, context);
                },
                child: Container(
                  height: 43,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: primaryColor),
                  alignment: Alignment.center,
                  child: Text(
                    "Continue",
                    style: primaryFont.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
