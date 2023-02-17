import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/home_view/loader_screen.dart';
import 'package:meops/src/views/update_kyc/upload_your_work.dart';

class MyProjectScreen extends StatefulWidget {
  const MyProjectScreen({super.key});

  @override
  State<MyProjectScreen> createState() => _MyProjectScreenState();
}

class _MyProjectScreenState extends State<MyProjectScreen> {

   bool isExpand = false;
   bool isExpand1 = false;
   bool isExpand2 = false;

   int index = 0;
   int index1 = 0;
   int index2 = 0;

   void _showDatePicker(){
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
      );
   }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(80),
        child: Container(
                height: 80,
                decoration:  BoxDecoration(
                    color: primaryColor,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25,left: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: const  Icon(Icons.arrow_back,color: Colors.white,),
                      ),
                      const SizedBox(width: 15,),
                       Text("My Projects",
                             style: primaryFont.copyWith(
                             color: Colors.white,
                             fontSize: 24,
                             fontWeight: FontWeight.w500,
                          ),
                       ),
                    ],
                  ),
                ),
              ),),
              body: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                          BoxShadow(
                            color: Color.fromARGB(255, 202, 201, 201),
                            blurRadius: 5.0
                          ),
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10,top: 15,bottom: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Image(image: AssetImage("assets/images/Group 1167.png")),
                                      const SizedBox(width: 5,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Kesavan",
                                          style: primaryFont.copyWith(
                                          color: primaryColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                           ),
                                        ),
                                        Text("Oct  17,2020",
                                          style: primaryFont.copyWith(
                                          color: const Color(0xff313033),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                           ),
                                        ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children:const [
                                       Icon(Icons.mail_outline,color: Color(0xff5800FF),),
                                       SizedBox(width: 5,),
                                       Image(image: AssetImage("assets/images/Vector (16).png")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                              child: Row(
                                children: [
                                  const Image(image: AssetImage("assets/images/Group 430.png")),
                                  const SizedBox(width: 5,),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10),
                                     child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text("Title Of Project",
                                              style: primaryFont.copyWith(
                                              color: primaryColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                               ),
                                            ),
                                            Text("Diwali Graphic Works",
                                          style: primaryFont.copyWith(
                                          color: const Color(0xff313033),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                           ),
                                        ),
                                       ],
                                     ),
                                   ),
                                ],
                              ),
                            ),
                            Container(
                              height: 183,
                              width: size.width,
                              decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Service\nType",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                      // Container(
                                      //   width: 0.3,
                                      //   height: 30,
                                      //   color: primaryColor,
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Delivery\nDate",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Reference\nDocuments",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Total\nAmount",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                     
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Unit of\nWork",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                    ],
                                  ),
                                  const Divider(color: Color(0xffD5BFFF),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Graphic\nDesign",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: InkWell(
                                          onTap: _showDatePicker,
                                          child: Text("20/10/2022",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                      ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Download",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                decoration: TextDecoration.underline,
                                                fontWeight: FontWeight.w400,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: PopupMenuButton(itemBuilder: (context) => [
                                              PopupMenuItem(child: 
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Enter Amount",
                                              textAlign: TextAlign.center,
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 15,right: 50),
                                                      child: Text("₹",
                                                        style: primaryFont.copyWith(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                         ),
                                                      ),
                                                    ),
                                                     Padding(
                                                      padding: const EdgeInsets.only(top: 2,left: 0,right: 0),
                                                      child: Divider(
                                                        color: primaryColor,
                                                        thickness: 2,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 5),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                             Text("Cancel",
                                                          style: primaryFont.copyWith(
                                                          color: Colors.black,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400,
                                                           ),
                                                        ), 
                                                        Container(
                                                          height: 18,
                                                          width: 34,
                                                          decoration: BoxDecoration(
                                                            color: primaryColor,
                                                            borderRadius: BorderRadius.circular(10),
                                                          ),
                                                          child: Center(
                                                            child: Text("Ok",
                                                          style: primaryFont.copyWith(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400,
                                                           ),
                                                         ), 
                                                          ),
                                                        ), 
                                                      ],),
                                                    )
                                                ],
                                              ))
                                            ],
                                          child: Row(
                                            children: [
                                              Text(" ₹1500",
                                              textAlign: TextAlign.center,
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ),
                                                    const SizedBox(width: 5,),
                                                    const Image(image: AssetImage("assets/images/Group 941.png"))
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: PopupMenuButton(itemBuilder: (context) => [
                                              PopupMenuItem(child: 
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Choose unit",
                                              textAlign: TextAlign.center,
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 10),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: 8,
                                                            width: 8,
                                                            decoration: BoxDecoration(
                                                              color: primaryColor,
                                                              borderRadius: BorderRadius.circular(4),
                                                            ),
                                                          ),
                                                          const SizedBox(width: 5,),
                                                          Text("Per Day",
                                                            style: primaryFont.copyWith(
                                                            color: Colors.black,
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w400,
                                                             ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 10),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: 8,
                                                            width: 8,
                                                            decoration: BoxDecoration(
                                                              border: Border.all(color: primaryColor),
                                                              borderRadius: BorderRadius.circular(4),
                                                            ),
                                                          ),
                                                          const SizedBox(width: 5,),
                                                          Text("Per Hour",
                                                            style: primaryFont.copyWith(
                                                            color: Colors.black,
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w400,
                                                             ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 10),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: 8,
                                                            width: 8,
                                                            decoration: BoxDecoration(
                                                             // color: primaryColor,
                                                              border: Border.all(color: primaryColor),
                                                              borderRadius: BorderRadius.circular(4),
                                                            ),
                                                          ),
                                                          const SizedBox(width: 10,),
                                                          Text("Not Applicable",
                                                            style: primaryFont.copyWith(
                                                            color: Colors.black,
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w400,
                                                             ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                     
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 5),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                             Text("Cancel",
                                                          style: primaryFont.copyWith(
                                                          color: const Color(0xff31303366),
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400,
                                                           ),
                                                        ), 
                                                        const SizedBox(width: 10,),
                                                        Container(
                                                          height: 18,
                                                          width: 34,
                                                          decoration: BoxDecoration(
                                                            color: primaryColor,
                                                            borderRadius: BorderRadius.circular(10),
                                                          ),
                                                          child: Center(
                                                            child: Text("Ok",
                                                          style: primaryFont.copyWith(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w400,
                                                           ),
                                                         ), 
                                                          ),
                                                        ), 
                                                      ],),
                                                    )
                                                ],
                                              ))
                                            ],
                                          child: Row(
                                            children: [
                                              Text("Per Day",
                                              textAlign: TextAlign.center,
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ),
                                                    const SizedBox(width: 5,),
                                                    const Image(image: AssetImage("assets/images/Group 941.png"))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(color: Color(0xffD5BFFF),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Description",
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                  ),
                                  const SizedBox(height: 5,),
                                   Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Need a poster design for wishing all the working staffs for a upcoming diwali festival.. see more",
                                                style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                    child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        isExpand == true ? Container(width: 100,) :
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              isExpand = true;
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Text("More Details",
                                                    style: primaryFont.copyWith(
                                                    color: const Color(0xff979797),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ),
                                                  const SizedBox(width: 5,),
                                                const Image(image: AssetImage("assets/images/Vector (17).png"))
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if(index == 0)
                                            Text("Reject",
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                                if(index == 1)
                                                 Container(
                                                  height: 40,
                                                  width: 74,
                                                  decoration: BoxDecoration(
                                                    color: primaryColor,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  child: Center(
                                                    child:Text("WIP",
                                                  style: primaryFont.copyWith(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ) ,
                                                  ),
                                                ),
                                                const SizedBox(width: 10,),
                                                if(index == 0)
                                                InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      index = 1;
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    width: 93,
                                                    decoration: BoxDecoration(
                                                      color: primaryColor,
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Center(
                                                      child:Text("Accept",
                                                    style: primaryFont.copyWith(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ) ,
                                                    ),
                                                  ),
                                                ),
                                                if(index == 1)
                                               InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    index = 2;
                                                  });
                                                },
                                                 child: Container(
                                                      height: 40,
                                                      width: 93,
                                                      decoration: BoxDecoration(
                                                        color: const Color(0xffCDB2FF),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Center(
                                                        child:Text("Complete",
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ) ,
                                                      ),
                                                    ),
                                               ),
                                                  if(index == 2)
                                                  InkWell(
                                                    onTap: (){
                                                      Get.to(const LoaderScreen());
                                                    },
                                                    child: Container(
                                                      height: 28,
                                                      width: 144,
                                                      decoration: BoxDecoration(
                                                        color: const Color(0xffCDB2FF),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Center(
                                                        child:Text("Upload Complete Work",
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ) ,
                                                      ),
                                                    ),
                                                  ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //2
                            if(isExpand == true)
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Container(
                                height: 183,
                                width: size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Service\nType",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        // Container(
                                        //   width: 0.3,
                                        //   height: 30,
                                        //   color: primaryColor,
                                        // ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Delivery\nDate",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Reference\nDocuments",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Total\nAmount",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                       
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Unit of\nWork",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Graphic\nDesign",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("20/10/2022",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Download",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  decoration: TextDecoration.underline,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Row(
                                            children: [
                                              Text(" ₹1500",
                                              textAlign: TextAlign.center,
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ),
                                                    const SizedBox(width: 5,),
                                                    const Image(image: AssetImage("assets/images/Group 941.png"))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Row(
                                            children: [
                                              Text("Per Day",
                                              textAlign: TextAlign.center,
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ),
                                                    const SizedBox(width: 5,),
                                                    const Image(image: AssetImage("assets/images/Group 941.png"))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Description",
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                    ),
                                    const SizedBox(height: 5,),
                                     Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Need a poster design for wishing all the working staffs for a upcoming diwali festival.. see more",
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          if(index == 0)
                                          Text("Reject",
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                              if(index == 1)
                                              Container(
                                                  height: 40,
                                                  width: 74,
                                                  decoration: BoxDecoration(
                                                    color: primaryColor,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  child: Center(
                                                    child:Text("WIP",
                                                  style: primaryFont.copyWith(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ) ,
                                                  ),
                                                ),
                                              const SizedBox(width: 10,),
                                              if(index == 0)
                                              Container(
                                                height: 40,
                                                width: 93,
                                                decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child:Text("Accept",
                                                style: primaryFont.copyWith(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ) ,
                                                ),
                                              ),
                                              if(index == 1)
                                              Container(
                                                    height: 40,
                                                    width: 93,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xffCDB2FF),
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Center(
                                                      child:Text("Complete",
                                                    style: primaryFont.copyWith(
                                                    color: primaryColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ) ,
                                                    ),
                                                  ),
                                                  if(index == 2)
                                                  InkWell(
                                                    onTap: (){
                                                      Get.to(const UploadYorWork());
                                                    },
                                                    child: Container(
                                                      height: 28,
                                                      width: 144,
                                                      decoration: BoxDecoration(
                                                        color: const Color(0xffCDB2FF),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Center(
                                                        child:Text("Upload Complete Work",
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ) ,
                                                      ),
                                                    ),
                                                  ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            //3
                            if(isExpand == true)
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Container(
                                height: 138,
                                width: size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Service",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        // Container(
                                        //   width: 0.3,
                                        //   height: 30,
                                        //   color: primaryColor,
                                        // ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("No of Days",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Amount per\nDay",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Total Amount",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                       
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Status",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Graphic\nDesign",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("5",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("₹1500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text(" ₹4500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Paid\n1500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.green,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("logo\nanimation",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("5",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("₹1500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text(" ₹4500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Pending\n500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.red,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    
                                    
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            if(isExpand == true)
                             InkWell(
                                          onTap: (){
                                            setState(() {
                                              isExpand = false;
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Text("Hide Details",
                                                    style: primaryFont.copyWith(
                                                    color: const Color(0xff979797),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ),
                                                  const SizedBox(width: 5,),
                                                const Image(image: AssetImage("assets/images/Vector (18).png"))
                                            ],
                                          ),
                                        ),
                                        
                          ],
                        ),
                      ),
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                          BoxShadow(
                            color: Color.fromARGB(255, 202, 201, 201),
                            blurRadius: 5.0
                          ),
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10,top: 15,bottom: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Image(image: AssetImage("assets/images/Group 1167.png")),
                                      const SizedBox(width: 5,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Kesavan",
                                          style: primaryFont.copyWith(
                                          color: primaryColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                           ),
                                        ),
                                        Text("Octconst  17,2020",
                                          style: primaryFont.copyWith(
                                          color: const Color(0xff313033),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                           ),
                                        ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children:const [
                                       Icon(Icons.mail_outline,color: Color(0xff5800FF),),
                                       SizedBox(width: 5,),
                                       Image(image: AssetImage("assets/images/Vector (16).png")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                              child: Row(
                                children: [
                                  const Image(image: AssetImage("assets/images/Group 430.png")),
                                  const SizedBox(width: 5,),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10),
                                     child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text("Title Of Project",
                                              style: primaryFont.copyWith(
                                              color: primaryColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                               ),
                                            ),
                                            Text("Diwali Graphic Works",
                                          style: primaryFont.copyWith(
                                          color: const Color(0xff313033),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                           ),
                                        ),
                                       ],
                                     ),
                                   ),
                                ],
                              ),
                            ),
                            Container(
                              height: 183,
                              width: size.width,
                              decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Service\nType",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                      // Container(
                                      //   width: 0.3,
                                      //   height: 30,
                                      //   color: primaryColor,
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Delivery\nDate",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Reference\nDocuments",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Total\nAmount",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                     
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Unit of\nWork",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                    ],
                                  ),
                                  const Divider(color: Color(0xffD5BFFF),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Graphic\nDesign",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("20/10/2022",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                 ),
                                              ),
                                      ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Download",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                decoration: TextDecoration.underline,
                                                fontWeight: FontWeight.w400,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Row(
                                          children: [
                                            Text(" ₹1500",
                                            textAlign: TextAlign.center,
                                                    style: primaryFont.copyWith(
                                                    color: primaryColor,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ),
                                                  const SizedBox(width: 5,),
                                                  const Image(image: AssetImage("assets/images/Group 941.png"))
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Row(
                                          children: [
                                            Text("Per Day",
                                            textAlign: TextAlign.center,
                                                    style: primaryFont.copyWith(
                                                    color: primaryColor,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ),
                                                  const SizedBox(width: 5,),
                                                  const Image(image: AssetImage("assets/images/Group 941.png"))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(color: Color(0xffD5BFFF),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Description",
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                  ),
                                  const SizedBox(height: 5,),
                                   Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Need a poster design for wishing all the working staffs for a upcoming diwali festival.. see more",
                                                style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                    child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        isExpand2 == true ? Container(width: 100,) :
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              isExpand2 = true;
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Text("More Details",
                                                    style: primaryFont.copyWith(
                                                    color: const Color(0xff979797),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ),
                                                  const SizedBox(width: 5,),
                                                const Image(image: AssetImage("assets/images/Vector (17).png"))
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if(index2 == 0)
                                            Text("Reject",
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                                if(index2 == 1)
                                                 Container(
                                                  height: 40,
                                                  width: 74,
                                                  decoration: BoxDecoration(
                                                    color: primaryColor,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  child: Center(
                                                    child:Text("WIP",
                                                  style: primaryFont.copyWith(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ) ,
                                                  ),
                                                ),
                                                const SizedBox(width: 10,),
                                                if(index2 == 0)
                                                InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      index2 = 1;
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    width: 93,
                                                    decoration: BoxDecoration(
                                                      color: primaryColor,
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Center(
                                                      child:Text("Accept",
                                                    style: primaryFont.copyWith(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ) ,
                                                    ),
                                                  ),
                                                ),
                                                if(index2 == 1)
                                               InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    index2 = 2;
                                                  });
                                                },
                                                 child: Container(
                                                      height: 40,
                                                      width: 93,
                                                      decoration: BoxDecoration(
                                                        color: const Color(0xffCDB2FF),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Center(
                                                        child:Text("Complete",
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ) ,
                                                      ),
                                                    ),
                                               ),
                                                  if(index2 == 2)
                                                  Container(
                                                    height: 28,
                                                    width: 144,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xffCDB2FF),
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Center(
                                                      child:Text("Upload Complete Work",
                                                    style: primaryFont.copyWith(
                                                    color: primaryColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ) ,
                                                    ),
                                                  ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //2
                            if(isExpand2 == true)
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Container(
                                height: 183,
                                width: size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Service\nType",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        // Container(
                                        //   width: 0.3,
                                        //   height: 30,
                                        //   color: primaryColor,
                                        // ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Delivery\nDate",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Reference\nDocuments",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Total\nAmount",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                       
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Unit of\nWork",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Graphic\nDesign",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("20/10/2022",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Download",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  decoration: TextDecoration.underline,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Row(
                                            children: [
                                              Text(" ₹1500",
                                              textAlign: TextAlign.center,
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ),
                                                    const SizedBox(width: 5,),
                                                    const Image(image: AssetImage("assets/images/Group 941.png"))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Row(
                                            children: [
                                              Text("Per Day",
                                              textAlign: TextAlign.center,
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ),
                                                    const SizedBox(width: 5,),
                                                    const Image(image: AssetImage("assets/images/Group 941.png"))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Description",
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                    ),
                                    const SizedBox(height: 5,),
                                     Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Need a poster design for wishing all the working staffs for a upcoming diwali festival.. see more",
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          if(index2 == 0)
                                          Text("Reject",
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                              if(index2 == 1)
                                              Container(
                                                  height: 40,
                                                  width: 74,
                                                  decoration: BoxDecoration(
                                                    color: primaryColor,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  child: Center(
                                                    child:Text("WIP",
                                                  style: primaryFont.copyWith(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ) ,
                                                  ),
                                                ),
                                              const SizedBox(width: 10,),
                                              if(index2 == 0)
                                              Container(
                                                height: 40,
                                                width: 93,
                                                decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child:Text("Accept",
                                                style: primaryFont.copyWith(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ) ,
                                                ),
                                              ),
                                              if(index2 == 1)
                                              Container(
                                                    height: 40,
                                                    width: 93,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xffCDB2FF),
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Center(
                                                      child:Text("Complete",
                                                    style: primaryFont.copyWith(
                                                    color: primaryColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ) ,
                                                    ),
                                                  ),
                                                  if(index2 == 2)
                                                  InkWell(
                                                    onTap: (){
                                                      Get.to(const UploadYorWork());
                                                    },
                                                    child: Container(
                                                      height: 28,
                                                      width: 144,
                                                      decoration: BoxDecoration(
                                                        color: const Color(0xffCDB2FF),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Center(
                                                        child:Text("Upload Complete Work",
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ) ,
                                                      ),
                                                    ),
                                                  ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            //3
                            if(isExpand2 == true)
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Container(
                                height: 138,
                                width: size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Service",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        // Container(
                                        //   width: 0.3,
                                        //   height: 30,
                                        //   color: primaryColor,
                                        // ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("No of Days",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Amount per\nDay",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Total Amount",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                       
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Status",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Graphic\nDesign",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("5",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("₹1500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text(" ₹4500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Paid\n1500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.green,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("logo\nanimation",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("5",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("₹1500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text(" ₹4500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Pending\n500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.red,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    
                                    
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            if(isExpand2 == true)
                             InkWell(
                                          onTap: (){
                                            setState(() {
                                              isExpand2 = false;
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Text("Hide Details",
                                                    style: primaryFont.copyWith(
                                                    color: const Color(0xff979797),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ),
                                                  const SizedBox(width: 5,),
                                                const Image(image: AssetImage("assets/images/Vector (18).png"))
                                            ],
                                          ),
                                        ),
                                        
                          ],
                        ),
                      ),
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                          BoxShadow(
                            color: Color.fromARGB(255, 202, 201, 201),
                            blurRadius: 5.0
                          ),
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10,top: 15,bottom: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Image(image: AssetImage("assets/images/Group 1167.png")),
                                      const SizedBox(width: 5,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Kesavan",
                                          style: primaryFont.copyWith(
                                          color: primaryColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                           ),
                                        ),
                                        Text("Octconst  17,2020",
                                          style: primaryFont.copyWith(
                                          color: const Color(0xff313033),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                           ),
                                        ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children:const [
                                       Icon(Icons.mail_outline,color: Color(0xff5800FF),),
                                       SizedBox(width: 5,),
                                       Image(image: AssetImage("assets/images/Vector (16).png")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                              child: Row(
                                children: [
                                  const Image(image: AssetImage("assets/images/Group 430.png")),
                                  const SizedBox(width: 5,),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10),
                                     child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text("Title Of Project",
                                              style: primaryFont.copyWith(
                                              color: primaryColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                               ),
                                            ),
                                            Text("Diwali Graphic Works",
                                          style: primaryFont.copyWith(
                                          color: const Color(0xff313033),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                           ),
                                        ),
                                       ],
                                     ),
                                   ),
                                ],
                              ),
                            ),
                            Container(
                              height: 183,
                              width: size.width,
                              decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Service\nType",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                      // Container(
                                      //   width: 0.3,
                                      //   height: 30,
                                      //   color: primaryColor,
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Delivery\nDate",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Reference\nDocuments",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Total\nAmount",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                     
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Unit of\nWork",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                      ),
                                    ],
                                  ),
                                  const Divider(color: Color(0xffD5BFFF),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Graphic\nDesign",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("20/10/2022",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                 ),
                                              ),
                                      ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Text("Download",
                                        textAlign: TextAlign.center,
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                decoration: TextDecoration.underline,
                                                fontWeight: FontWeight.w400,
                                                 ),
                                              ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Row(
                                          children: [
                                            Text(" ₹1500",
                                            textAlign: TextAlign.center,
                                                    style: primaryFont.copyWith(
                                                    color: primaryColor,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ),
                                                  const SizedBox(width: 5,),
                                                  const Image(image: AssetImage("assets/images/Group 941.png"))
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 5),
                                        child: Row(
                                          children: [
                                            Text("Per Day",
                                            textAlign: TextAlign.center,
                                                    style: primaryFont.copyWith(
                                                    color: primaryColor,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ),
                                                  const SizedBox(width: 5,),
                                                  const Image(image: AssetImage("assets/images/Group 941.png"))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(color: Color(0xffD5BFFF),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Description",
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                  ),
                                  const SizedBox(height: 5,),
                                   Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Need a poster design for wishing all the working staffs for a upcoming diwali festival.. see more",
                                                style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                    child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        isExpand1 == true ? Container(width: 100,) :
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              isExpand1 = true;
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Text("More Details",
                                                    style: primaryFont.copyWith(
                                                    color: const Color(0xff979797),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ),
                                                  const SizedBox(width: 5,),
                                                const Image(image: AssetImage("assets/images/Vector (17).png"))
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if(index1 == 0)
                                            Text("Reject",
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                                if(index1 == 1)
                                                 Container(
                                                  height: 40,
                                                  width: 74,
                                                  decoration: BoxDecoration(
                                                    color: primaryColor,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  child: Center(
                                                    child:Text("WIP",
                                                  style: primaryFont.copyWith(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ) ,
                                                  ),
                                                ),
                                                const SizedBox(width: 10,),
                                                if(index1 == 0)
                                                InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      index1 = 1;
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    width: 93,
                                                    decoration: BoxDecoration(
                                                      color: primaryColor,
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Center(
                                                      child:Text("Accept",
                                                    style: primaryFont.copyWith(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ) ,
                                                    ),
                                                  ),
                                                ),
                                                if(index1 == 1)
                                               InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    index1 = 2;
                                                  });
                                                },
                                                 child: Container(
                                                      height: 40,
                                                      width: 93,
                                                      decoration: BoxDecoration(
                                                        color: const Color(0xffCDB2FF),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Center(
                                                        child:Text("Complete",
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ) ,
                                                      ),
                                                    ),
                                               ),
                                                  if(index1 == 2)
                                                  Container(
                                                    height: 28,
                                                    width: 144,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xffCDB2FF),
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Center(
                                                      child:Text("Upload Complete Work",
                                                    style: primaryFont.copyWith(
                                                    color: primaryColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ) ,
                                                    ),
                                                  ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //2
                            if(isExpand1 == true)
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Container(
                                height: 183,
                                width: size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Service\nType",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        // Container(
                                        //   width: 0.3,
                                        //   height: 30,
                                        //   color: primaryColor,
                                        // ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Delivery\nDate",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Reference\nDocuments",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Total\nAmount",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                       
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Unit of\nWork",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Graphic\nDesign",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("20/10/2022",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Download",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  decoration: TextDecoration.underline,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Row(
                                            children: [
                                              Text(" ₹1500",
                                              textAlign: TextAlign.center,
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ),
                                                    const SizedBox(width: 5,),
                                                    const Image(image: AssetImage("assets/images/Group 941.png"))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Row(
                                            children: [
                                              Text("Per Day",
                                              textAlign: TextAlign.center,
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ),
                                                    const SizedBox(width: 5,),
                                                    const Image(image: AssetImage("assets/images/Group 941.png"))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Description",
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                    ),
                                    const SizedBox(height: 5,),
                                     Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Need a poster design for wishing all the working staffs for a upcoming diwali festival.. see more",
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          if(index == 0)
                                          Text("Reject",
                                                style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ),
                                              if(index1 == 1)
                                              Container(
                                                  height: 40,
                                                  width: 74,
                                                  decoration: BoxDecoration(
                                                    color: primaryColor,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  child: Center(
                                                    child:Text("WIP",
                                                  style: primaryFont.copyWith(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ) ,
                                                  ),
                                                ),
                                              const SizedBox(width: 10,),
                                              if(index1 == 0)
                                              Container(
                                                height: 40,
                                                width: 93,
                                                decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child:Text("Accept",
                                                style: primaryFont.copyWith(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                 ),
                                              ) ,
                                                ),
                                              ),
                                              if(index1 == 1)
                                              Container(
                                                    height: 40,
                                                    width: 93,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xffCDB2FF),
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Center(
                                                      child:Text("Complete",
                                                    style: primaryFont.copyWith(
                                                    color: primaryColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ) ,
                                                    ),
                                                  ),
                                                  if(index1 == 2)
                                                  InkWell(
                                                    onTap: (){
                                                      Get.to(const UploadYorWork());
                                                    },
                                                    child: Container(
                                                      height: 28,
                                                      width: 144,
                                                      decoration: BoxDecoration(
                                                        color: const Color(0xffCDB2FF),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Center(
                                                        child:Text("Upload Complete Work",
                                                      style: primaryFont.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ) ,
                                                      ),
                                                    ),
                                                  ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            //3
                            if(isExpand1 == true)
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Container(
                                height: 138,
                                width: size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Service",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        // Container(
                                        //   width: 0.3,
                                        //   height: 30,
                                        //   color: primaryColor,
                                        // ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("No of Days",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Amount per\nDay",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Total Amount",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                       
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Status",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Graphic\nDesign",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("5",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("₹1500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text(" ₹4500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Paid\n1500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.green,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    const Divider(color: Color(0xffD5BFFF),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("logo\nanimation",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("5",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("₹1500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text(" ₹4500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text("Pending\n500",
                                          textAlign: TextAlign.center,
                                                  style: primaryFont.copyWith(
                                                  color: Colors.red,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                   ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    
                                    
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            if(isExpand1 == true)
                             InkWell(
                                          onTap: (){
                                            setState(() {
                                              isExpand1 = false;
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Text("Hide Details",
                                                    style: primaryFont.copyWith(
                                                    color: const Color(0xff979797),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                     ),
                                                  ),
                                                  const SizedBox(width: 5,),
                                                const Image(image: AssetImage("assets/images/Vector (18).png"))
                                            ],
                                          ),
                                        ),
                                        
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  //second
                  
                ],
              ),
    );
  }
}