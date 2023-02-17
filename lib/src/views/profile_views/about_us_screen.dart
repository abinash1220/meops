import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
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
                        child:const Icon(Icons.arrow_back,color: Colors.white,),
                      ),
                      
                    ],
                  ),
                ),
              ),),
              body: Padding(
                padding: const EdgeInsets.only(left: 15,top: 15,),
                child: ListView(
                  children: [
                    Center(
                      child: Text("ABOUT US",
                                         style: primaryFont.copyWith(
                                         color: primaryColor,
                                         fontSize: 20,
                                         fontWeight: FontWeight.w600,
                                      ),
                                   ),
                    ),
                                 const SizedBox(height: 10,),
                                 Text("""MEOps (app owned, developed and maintained by Generation360 Media Solutions Private Limited, Chennai – Tamil Nadu) is a talent aggregator platform and a one-stop solution for the media and entertainment industry in India. The app aims to serve as a binding force for talented professionals and their clientele, hoping to connect talent with big minds. MEOps is a user-friendly, interactive, fast, reliable, and authenticated service, complete with easy navigation, well-integrated services, and negotiable workflow, coupled with a transparent payment system of operation to suit both professionals and clients alike. It attempts to bring raw talent to the limelight and to help professionals and clients thrive and excel in the media and entertainment industry.
MEOps contains a wide range of categories for wider coverage of the media and entertainment industry such as Film and TV production, Events, Animation and Gaming, Website and App Development, Designing, Sales and Marketing, Social Media, Content Development, Ad Creation, Event Management, Music, Actors, Artists, Performers, Models, Influencers, Media Equipment etc. With multiple sub-categories in each of these, MEOps reaches out to every profession in the industry and provides a feasible workforce to cater to all vital needs of the media and entertainment industry.
MEOps works with a transparent and fair payment integration system. There are no hassles of a bidding system as in other apps. You get to quote your service rate and so be it! The project is yours for the taking. For the non-subscribers, there is a low rate of commission fee as well. On MEOps, a professional has the freedom to choose any kind of project, suited to his capability and preference. The sky is the limit for every professional and every client on MEOps.

THE CREW
Jayesh Paniker - Founder Director
Jayesh holds a rich experience of more than 14 years in the Media & Entertainment Industry. He is Proficient in Production Studios, OTT, Events, PR & Marketing, Talent Management, Digital Business Transformation, Automation and Training. He has an MBA in Media and Entertainment Management, certified in Sound Engineering, Recording Arts and Direction - Film and TV. He is a member of the IFTDA (Indian Film and Television Directors Association) and SWA (Screenplay Writers Association).

Vimal Andrews - Creative Operations Officer
Vimal has 11 years of TV production experience in varied roles for Rohini’s Box Office, Swarna Sangeetham, Voice of Tamil Nadu, Gold Casino, Tamil Pesum Kadhanayagi, WAA Awards, Kodai Kondattam, Celebrity Interviews, Super Dancers, Illayaraja Events, S.P.B Events and also worked as Assistant Cameraman for Jaya TV, IPL 2011, MRF Race, Airtel Super Singer, Beach Girlz and many more. He has completed Diploma in Visual Communications from Loyola College.

Nishkala K Prakash - Photographer
Photography is something that has travelled along with her right from childhood. Be it the Point and shoot, mobile camera, the DSLR, its been with her always. She strongly believes it is the eye behind the camera that captures moments and camera helps to freeze it. She is great image editing experience using Adobe Lightroom and Photoshop, also a certified newborn photographer from Ahaana Photography. She has completed Product photography and Photography masterclass from Udemy.

Andrews Vincent - Cinematographer
Andrews is an avid photographer and is a genius cinematographer in the making. He is an alumnus of SRM KTR, Chennai where he studied B. Sc Viscom. He has a strong connection with fashion, influencer industry and has made music videos, social media contents and loves working with emerging talents.

Glady Paul - Media Operations Executive
Glady has started her career as Media Operations Executive with experience in Digital Marketing on platforms such as Google Ads, Facebook & Instagram, YouTube, LinkedIn. She has experience as Graphic Designer and Photographer working on various projects and stays up-to-date with the digital trends thus implementing the latest trends across businesses. She also has a strong analytical mind to produce best results possible by studying the statistics and optimizing a marketing campaign to improve its performance and help the business generate leads, grow revenue & increase brand awareness.

PRODUCERS
Ramya Nagaraj
Has over 9 years’ experience in Actuarial Science & Investment Banking, has worked with two reputed European banks.

Srujana Kanumuru
Srujana holds a bachelor’s degree in Information Technology. She is an aspiring Entrepreneur and a horticulturist to boot.

Rakhil Nagaraj
Rakhil holds an MBA in Finance & Marketing, has rich experience in the fields of Sales & Marketing, OTT/Digital Platforms.

Sumi Varma
A diploma holder in Fashion Designing and with over 5 years of experience in Admin Operations, Sumi has worked as a Fashion Designer in the television industry.

Contact Details
Address: No 2. Venkateshwara Nagar, 2nd Main Road, Velachery, Chennai, Tamil Nadu 600042
Phone: +91 73057 77360 / 044 4269 9154
Email: admin@generation360.in


""",
                                         style: primaryFont.copyWith(
                                         color: Colors.black,
                                         fontSize: 14,
                                         fontWeight: FontWeight.w500,
                                      ),
                                   ),
                  ],
                ),
              ),
    );
  }
}