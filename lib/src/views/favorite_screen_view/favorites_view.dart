import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/category_controller.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  final categoryController = Get.find<CategoryController>();

  bool isExpand = false;
   bool isExpand1 = false;
   bool isExpand2 = false;

   int index = 0;
   int index1 = 0;
   int index2 = 0;

  int indexs = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              centerTitle: true,
              title: Text(
                "Favourites",
                style: primaryFont.copyWith(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      indexs = 0;
                    });
                  },
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: indexs == 0
                            ? primaryColor
                            : primaryColor.withOpacity(0.2)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Work",
                        style: primaryFont.copyWith(
                            color: indexs == 0
                                ? Colors.white
                                : primaryColor.withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      indexs = 1;
                    });
                  },
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: indexs == 1
                            ? primaryColor
                            : primaryColor.withOpacity(0.2)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Projects",
                        style: primaryFont.copyWith(
                            color: indexs == 1
                                ? Colors.white
                                : primaryColor.withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      indexs = 2;
                    });
                  },
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: indexs == 2
                            ? primaryColor
                            : primaryColor.withOpacity(0.2)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Profiles",
                        style: primaryFont.copyWith(
                            color: indexs == 2
                                ? Colors.white
                                : primaryColor.withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),

      ),
      body:indexs == 0 ? ListView(
        children: [
          GetBuilder<CategoryController>(builder: (_) {
            return  SizedBox(
              height: size.height * 0.8,
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                physics:const NeverScrollableScrollPhysics(),
                itemCount: categoryController.topAnimationList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Stack(
                      children: [
                        Container(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  categoryController.topAnimationList[index].image,
                                  fit: BoxFit.cover,
                                ))),
                        Positioned(
                          top: 10,
                          right: 30,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(20)),
                            alignment: Alignment.center,
                            child: const Icon(Icons.favorite_border,
                                color: Colors.white, size: 18),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(categoryController
                                      .topAnimationList[index].profileImage),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    categoryController
                                        .topAnimationList[index].name,
                                    style: primaryFont.copyWith(
                                        color: Colors.white, fontSize: 11),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                categoryController
                                    .topAnimationList[index].categoryName,
                                style: primaryFont.copyWith(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            );
          })
        ],
      ) : indexs == 1 ? 
      ListView(
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
                                                         // Get.to(const LoaderScreen());
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
                                                         // Get.to(const UploadYorWork());
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
                                                         // Get.to(const LoaderScreen());
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
                                                         // Get.to(const UploadYorWork());
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
                      const SizedBox(height: 15,),
        ],
      ) 
      : indexs == 2 ? 
      ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: InkWell(
                    onTap: () {
                     // Get.to(const ProfileStsView());
                    },
                    child: Container(
                      width: size.width,
                      height: 164,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 211, 210, 210),
                                blurRadius: 5.0),
                          ]),
                      child: Row(
                        children: [
                          Stack(children: [
                            const Image(image: AssetImage("assets/images/img1.png")),
                            Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Center(
                                  child: Image(
                                      image: AssetImage(
                                          "assets/icons/Vector (7).png")),
                                ),
                              ),
                            ),
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 15, right: 10, bottom: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Image(
                                        image: AssetImage(
                                            "assets/images/prf2.png")),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Madhu",
                                      style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Image(
                                        image: AssetImage(
                                            "assets/icons/Vector (6).png")),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "4.0(46)",
                                      style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Category",
                                      style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 14,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    Text(
                                      "Designer",
                                      style: primaryFont.copyWith(
                                        color: Colors.black,
                                        fontSize: 14,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Location",
                                      style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 14,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    Text(
                                      "Chennai",
                                      style: primaryFont.copyWith(
                                        color: Colors.black,
                                        fontSize: 14,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Experience",
                                      style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 14,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 22,
                                    ),
                                    Text(
                                      "Intermediate",
                                      style: primaryFont.copyWith(
                                        color: Colors.black,
                                        fontSize: 14,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Avg Rate",
                                      style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 14,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    Text(
                                      "₹ 1400/Day",
                                      style: primaryFont.copyWith(
                                        color: Colors.black,
                                        fontSize: 14,
                                        // fontWeight: FontWeight.bold,
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Container(
                    width: size.width,
                    height: 164,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 211, 210, 210),
                              blurRadius: 5.0),
                        ]),
                    child: Row(
                      children: [
                        Stack(children: [
                          const Image(image: AssetImage("assets/images/img2.png")),
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child:const  Center(
                                child: Image(
                                    image: AssetImage(
                                        "assets/icons/Vector (7).png")),
                              ),
                            ),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 15, right: 10, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                 const Image(
                                      image:
                                          AssetImage("assets/images/prf.png")),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Kissan",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Image(
                                      image: AssetImage(
                                          "assets/icons/Vector (6).png")),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    "4.0(46)",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Category",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "Videographer",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Location",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "Chennai",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Experience",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 22,
                                  ),
                                  Text(
                                    "Intermediate",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Avg Rate",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "₹ 400/Hour",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Container(
                    width: size.width,
                    height: 164,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 211, 210, 210),
                              blurRadius: 5.0),
                        ]),
                    child: Row(
                      children: [
                        Stack(children: [
                          const Image(image: AssetImage("assets/images/img1.png")),
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child:const Center(
                                child: Image(
                                    image: AssetImage(
                                        "assets/icons/Vector (7).png")),
                              ),
                            ),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 15, right: 10, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                 const Image(
                                      image:
                                          AssetImage("assets/images/prf1.png")),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Madhu",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                 const  Image(
                                      image: AssetImage(
                                          "assets/icons/Vector (6).png")),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    "4.0(46)",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Category",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "Events",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Location",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "Chennai",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Experience",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 22,
                                  ),
                                  Text(
                                    "Intermediate",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Avg Rate",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "Not Applicable",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
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
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, bottom: 15, top: 15),
                  child: Container(
                    width: size.width,
                    height: 164,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 211, 210, 210),
                              blurRadius: 5.0),
                        ]),
                    child: Row(
                      children: [
                        Stack(children: [
                          const Image(image: AssetImage("assets/images/img2.png")),
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Center(
                                child: Image(
                                    image: AssetImage(
                                        "assets/icons/Vector (7).png")),
                              ),
                            ),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 15, right: 10, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Image(
                                      image:
                                          AssetImage("assets/images/prf3.png")),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Madhu",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Image(
                                      image: AssetImage(
                                          "assets/icons/Vector (6).png")),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    "4.0(46)",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Category",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "Designer",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Location",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "Chennai",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Experience",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 22,
                                  ),
                                  Text(
                                    "Intermediate",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Avg Rate",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "₹ 1400/Day",
                                    style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
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
                ),
              ],
            )

      : Container(),
    );
  }
}
