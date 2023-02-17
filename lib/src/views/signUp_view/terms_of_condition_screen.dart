
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class TermsOfCondition extends StatefulWidget {
  const TermsOfCondition({super.key});

  @override
  State<TermsOfCondition> createState() => _TermsOfConditionState();
}

class _TermsOfConditionState extends State<TermsOfCondition> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         body: SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                decoration:  BoxDecoration(
                    color: primaryColor,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 25,left: 20),
                        child: Icon(Icons.arrow_back,color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Terms & Conditions",
                    style: primaryFont.copyWith(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 22),
                    ),
                    const SizedBox(height: 10,),
                     Text("Updated on 2022-06-01",
                    style: primaryFont.copyWith(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 12),
                    ),
                    const SizedBox(height: 10,),
                    Text("General Terms",
                    style: primaryFont.copyWith(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      """By accessing and placing an order with MEOps, you confirm that you are in agreement with and bound by the terms of service contained in the Terms & Conditions outlined below. These terms apply to the entire website and any email or other form of communication between you and MEOps.
         Under no circumstances shall the MEOps team be liable for any direct, indirect, special, incidental or consequential damages, including, but not limited to, loss of data or profit, arising out of the use, or the inability to use the materials on this site, even if MEOps team or an authorized representative has been advised of the possibility of such damages. If your use of materials from this site results in the need for servicing, repair or correction of equipment or data, you assume any costs thereof.
         MEOps will not be responsible for any outcome that may occur during the course of usage of our resources. We reserve the right to change prices and revise the resource usage policy at any moment.
         
         License
         MEOps grants you a revocable, non-exclusive, non-transferable, limited license to download, install and use the app strictly in accordance with the terms of this Agreement.
         These Terms & Conditions are a contract between you and MEOps (referred to in these Terms & Conditions as "MEOps", "us", "we" or "our"), the provider of the MEOps website and the services accessible from the MEOps website (which are collectively referred to in these Terms & Conditions as the "MEOps Service").
         You are agreeing to be bound by these Terms & Conditions. If you do not agree to these Terms & Conditions, please do not use the MEOps Service. In these Terms & Conditions, "you" refers both to you as an individual and to the entity you represent. If you violate any of these Terms & Conditions, we reserve the right to cancel your account or block access to your account without prior notice.
         
         Definitions and Key Terms
         To help explain things as clearly as possible in this Terms & Conditions, every time any of these terms are referenced, they can be strictly defined as follows:
         ● Cookie: Small amount of data generated by a website and saved by your web browser. It is used to identify your browser, provide analytics, and remember information about you such as your language preference or login information.
         ● Company: The terms “Company,” “we,” “us,” or “our,” refers to Generation360 Media Solutions Private
         Limited, 15, No: 51, Sigaram Towers, Kumaran Colony Main Road, Vadapalani, next to Apollo Medical Center, Chennai, Tamil Nadu 600026 is responsible for your information under this Terms & Conditions.
         ● Country: A region where MEOps or the owners/founders of MEOps are based, in this case, is India
         ● Device: Any internet-connected device such as a phone, tablet, computer, or any other device that can be used to visit MEOps and use the services.
         ● Service: It refers to the service provided by MEOps as described in relative terms (if available) and on this platform.
         ● Third-party service: It refers to advertisers, contest sponsors, promotional and marketing partners, and others who provide our content or whose products or services we think may interest you.
         ● Website: MEOps.”s" site, which can be accessed via this URL:
         ● You: A person or entity that is registered with MEOps to use the Services.
         
         Restrictions
         You agree not to, and you will not permit others to:
         ● License, sell, rent, lease, assign, distribute, transmit, host, outsource, disclose or otherwise commercially exploit the app or make the platform available to any third party.
         ● Modify, make derivative works of, disassemble, decrypt, reverse compile or reverse engineer any part of the app.
         ● Remove, alter or obscure any proprietary notice (including any notice of copyright or trademark) of MEOps or its affiliates, partners, suppliers or the licensors of the app.
         
         Return and Refund Policy
         Thank you for interacting with MEOps. We appreciate the fact that you like to avail of the services we have built exclusively for talented professionals. We also want to make sure that you have a rewarding experience while you’re exploring, evaluating, and availing of our services.
         As with any online experience, there are terms and conditions that apply to transactions at MEOps. We’ll be as brief as our attorneys will allow. The main thing to remember is that by placing availing of service on MEOps, you agree to the terms along with the MEOps Privacy Policy.
         We charge a flat fee of 10% of your earnings, every time you deliver client projects of our varied services on MEOps.
         If, for any reason, you are not completely satisfied with our work, support please do not hesitate to contact us and we will try to evaluate and resolve the issue to the best of our ability.
         
         Your Suggestions
         Any feedback, comments, ideas, improvements or suggestions (collectively, "Suggestions") provided by you to MEOps with respect to the app shall remain the sole and exclusive property of MEOps.
         MEOps shall be free to use, copy, modify, publish, or redistribute the Suggestions for any purpose and in any way without any credit or any compensation to you.
         
         Your Consent
         We've updated our Terms & Conditions to provide you with complete transparency into what is being set when you visit our site and how it's being used. By using our app, registering an account, or making a purchase, you hereby consent to our Terms & Conditions.
         
         Links To Other Websites
         These Terms & Conditions apply only to the Services. The Services may contain links to other websites not operated or controlled by MEOps. We are not responsible for the content, accuracy or opinions expressed in such websites, and such websites are not investigated, monitored or checked for accuracy or completeness by us. Please remember that when you use a link to go from the Services to another website, our Terms & Conditions are no longer in effect. Your browsing and interaction on any other website, including those that have a link on our platform, is subject to that website’s own rules and policies. Such third parties may use their own cookies or other methods to collect information about you.
         
         Cookies
         MEOps uses "Cookies" to identify the areas of our website that you have visited. A Cookie is a small piece of data stored on your computer or mobile device by your web browser. We use Cookies to enhance the performance and functionality of our app but are non-essential to their use. However, without these cookies, certain functionality like videos may become unavailable or you would be required to enter your login details every time you visit the app as we would not be able to remember that you had logged in previously. Most web browsers can be set to disable the use of Cookies. However, if you disable Cookies, you may not be able to access functionality on our website correctly or at all. We never place Personally Identifiable Information in Cookies.
         
         Changes To Our Terms & Conditions
         You acknowledge and agree that MEOps may stop (permanently or temporarily) providing the Service (or any features within the Service) to you or to users generally at MEOps’ sole discretion, without prior notice to you. You may stop using the Service at any time. You do not need to specifically inform MEOps when you stop using the Service. You acknowledge and agree that if MEOps disables access to your account, you may be prevented from accessing the Service, your account details or any files or other materials which is contained in your account.
         If we decide to change our Terms & Conditions, we will post those changes on this page, and/or update the Terms & Conditions modification date below.
         
         Modifications To Our App
         MEOps reserves the right to modify, suspend or discontinue, temporarily or permanently, the app or any service to which it connects, with or without notice and without liability to you.
         
         Updates To Our App
         MEOps may from time to time provide enhancements or improvements to the features/ functionality of the app, which may include patches, bug fixes, updates, upgrades and other modifications ("Updates").
         Updates may modify or delete certain features and/or functionalities of the app. You agree that MEOps has no obligation to (i) provide any Updates, or (ii) continue to provide or enable any particular features and/or functionalities of the app to you.
         You further agree that all Updates will be (i) deemed to constitute an integral part of the app, and (ii) subject to the terms and conditions of this Agreement.
         
         Third-Party Services
         We may display, include or make available third-party content (including data, information, applications and other products services) or provide links to third-party websites or services ("Third- Party Services").
         You acknowledge and agree that MEOps shall not be responsible for any Third-Party Services, including their accuracy,
         completeness, timeliness, validity, copyright compliance, legality, decency, quality or any other aspect thereof. MEOps does not assume and shall not have any liability or responsibility to you or any other person or entity for any Third-Party Services.
         Third-Party Services and links thereto are provided solely as a convenience to you and you access and use them entirely at your own risk and subject to such third parties' terms and conditions.
         
         Term and Termination
         This Agreement shall remain in effect until terminated by you or MEOps.
         MEOps may, in its sole discretion, at any time and for any or no reason, suspend or terminate this Agreement with or without prior notice.
         This Agreement will terminate immediately, without prior notice from MEOps, in the event that you fail to comply with any provision of this Agreement. You may also terminate this Agreement by deleting the app and all copies thereof from your computer.
         Upon termination of this Agreement, you shall cease all use of the app and delete all copies of the app from your computer.
         Termination of this Agreement will not limit any of MEOps's rights or remedies at law or in equity in case of breach by you (during the term of this Agreement) of any of your obligations under the present Agreement.
         
         Copyright Infringement Notice
         If you are a copyright owner or such owner’s agent and believe any material on our app constitutes an infringement on your copyright, please contact us setting forth the following information: (a) a physical or electronic signature of the copyright owner or a person authorized to act on his behalf; (b) identification of the material that is claimed to be infringing; (c) your contact information, including your address, telephone number, and an email; (d) a statement by you that you have a good faith belief that use of the material is not authorized by the copyright owners; and (e) the a statement that the information in the notification is accurate, and, under penalty of perjury you are authorized to act on behalf of the owner.
         
         Indemnification
         You agree to indemnify and hold MEOps and its parents, subsidiaries, affiliates, officers, employees, agents, partners and licensors (if any) harmless from any claim or demand, including reasonable attorneys' fees, due to or arising out of your: (a) use of the app; (b) violation of this Agreement or any law or regulation; or (c) violation of any right of a third party.
         
         No Warranties
         The app is provided to you "AS IS" and "AS AVAILABLE" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, MEOps, on its own behalf and on behalf of its affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the app, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, MEOps provides no warranty or undertaking, and makes no representation of any kind that the app will meet your requirements, achieve any intended results, be compatible or work with any other software, , systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.
         Without limiting the foregoing, neither MEOps nor any MEOps’ provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the app, or the information, content, and materials or products included thereon; (ii) that the app will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the app; or (iv) that the app, its servers, the content, or e-mails sent from or on behalf of MEOps are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.
         Some jurisdictions do not allow the exclusion of or limitations on implied warranties or the limitations on the applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to you.
         
         Limitation of Liability
         Notwithstanding any damages that you might incur, the entire liability of MEOps and any of its suppliers under any provision of this Agreement and your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by you for the app.
         To the maximum extent permitted by applicable law, in no event shall MEOps or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, for loss of data or other information, for business interruption, for personal injury, for loss of privacy arising out of or in any way related to the use of or inability to use the app, third-party software and/or third-party hardware used with the app, or otherwise in connection with any provision of this Agreement), even if MEOps or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.
         Some states/jurisdictions do not allow the exclusion or limitation of incidental or consequential damages, so the above limitation or exclusion may not apply to you.
         
         Severability
         If any provision of this Agreement is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.
         This Agreement, together with the Privacy Policy and any other legal notices published by MEOps on the Services, shall constitute the entire agreement between you and MEOps concerning the Services. If any provision of this Agreement is deemed invalid by a court of competent jurisdiction, the invalidity of such provision shall not affect the validity of the remaining provisions of this Agreement, which shall remain in full force and effect. No waiver of any term of this Agreement shall be deemed a further or continuing waiver of such term or any other term, and MEOps. “s” failure to assert any right or provision under this Agreement shall not constitute a waiver of such right or provision. YOU AND MEOps AGREE THAT ANY CAUSE OF ACTION ARISING OUT OF OR RELATED TO THE SERVICES MUST COMMENCE WITHIN ONE (1) YEAR AFTER THE CAUSE OF ACTION ACCRUES. OTHERWISE, SUCH CAUSE OF ACTION IS PERMANENTLY BARRED.
         
         Waiver
         Except as provided herein, the failure to exercise a right or to require performance of an obligation under this Agreement shall not effect a party's ability to exercise such right or require such performance at any time thereafter nor shall be the waiver of a breach constitute waiver of any subsequent breach.
         Failure to exercise, and no delay in exercising, on the part of either party, any right or any power under this Agreement shall
         operate as a waiver of that right or power. Nor shall any single or partial exercise of any right or power under this Agreement preclude further exercise of that or any other right granted herein. In the event of a conflict between this Agreement and any applicable purchase or other terms, the terms of this Agreement shall govern.
         
         Amendments to this Agreement
         MEOps reserves the right, at its sole discretion, to modify or replace this Agreement at any time. If a revision is a material change, then we will provide at least 30 days’ notice prior to any new terms taking effect. What constitutes a material change will be determined by our sole discretion.
         By continuing to access or use our app after any revisions become effective, you agree to be bound by the revised terms. If you do not agree to the new terms, you are no longer authorized to use MEOps.
         
         Entire Agreement
         The Agreement constitutes the entire agreement between you and MEOps regarding your use of the app and supersedes all prior and contemporaneous written or oral agreements between you and MEOps.
         You may be subject to additional terms and conditions that apply when you use or purchase other MEOps’ services, which MEOps will provide to you at the time of such use or purchase.
         
         Updates to Our Terms
         We may change our Service and policies, and we may need to make changes to these Terms so that they accurately reflect our Service and policies. Unless otherwise required by law, we will notify you (for example, through our Service) before we make changes to these Terms and give you an opportunity to review them before they go into effect. Then, if you continue to use the Service, you will be bound by the updated Terms. If you do not want to agree to these or any updated Terms, you can delete your account.
         
         Intellectual Property
         The app and its entire contents, features and functionality (including but not limited to all information, software, text, displays, images, video and audio, and the design, selection and arrangement thereof), are owned by MEOps, its licensors or other providers of such material and are protected by India and international copyright, trademark, patent, trade secret and other intellectual property or proprietary rights laws. The material may not be copied, modified, reproduced, downloaded or distributed in any way, in whole or in part, without the express prior written permission of MEOps, unless and except as is expressly provided in these Terms & Conditions. Any unauthorized use of the material is prohibited.
         
         Agreement to Arbitrate
         This section applies to any dispute EXCEPT IT DOESN’T INCLUDE A DISPUTE RELATING TO CLAIMS FOR INJUNCTIVE OR EQUITABLE RELIEF REGARDING THE ENFORCEMENT OR VALIDITY OF YOUR OR MEOps. “s" INTELLECTUAL PROPERTY RIGHTS. The term “dispute” means any dispute, action, or other controversy between you and MEOps concerning the Services or this agreement, whether in contract, warranty, tort, statute, regulation, ordinance, or any other legal or equitable basis. “Dispute” will be given the broadest possible meaning allowable under law.
         
         Notice of Dispute
         In the event of a dispute, you or MEOps must give the other a Notice of Dispute, which is a written statement that sets forth the name, address, and contact information of the party giving it, the facts giving rise to the dispute, and the relief requested. You must send any Notice of Dispute via email to: admin@generation360.in. MEOps will send any Notice of Dispute to you by mail to your address if we have it, or otherwise to your email address. You and MEOps will attempt to resolve any dispute through informal negotiation within sixty (60) days from the date the Notice of Dispute is sent. After sixty (60) days, you or MEOps may commence arbitration.
         
         Binding Arbitration
         If you and MEOps don’t resolve any dispute by informal negotiation, any other effort to resolve the dispute will be conducted exclusively by binding arbitration as described in this section. You are giving up the right to litigate (or participate in as a party or class member) all disputes in court before a judge or jury. The dispute shall be settled by binding arbitration in accordance with the commercial arbitration rules of the American Arbitration Association. Either party may seek any interim or preliminary injunctive relief from any court of competent jurisdiction, as necessary to protect the party’s rights or property pending the completion of arbitration. Any and all legal, accounting, and other costs, fees, and expenses incurred by the prevailing party shall be borne by the non-prevailing party.
         
         Submissions and Privacy
         In the event that you submit or post any ideas, creative suggestions, designs, photographs, information, advertisements, data or proposals, including ideas for new or improved products, services, features, technologies or promotions, you expressly agree that such submissions will automatically be treated as non-confidential and non-proprietary and will become the sole property of MEOps without any compensation or credit to you whatsoever. MEOps and its affiliates shall have no obligations with respect to such submissions or posts and may use the ideas contained in such submissions or posts for any purposes in any medium in perpetuity, including, but not limited to, developing, manufacturing, and marketing products and services using such ideas.
         
         Promotions
         MEOps may, from time to time, include contests, promotions, sweepstakes, or other activities (“Promotions”) that require you to submit material or information concerning yourself. Please note that all Promotions may be governed by separate rules that may contain certain eligibility requirements, such as restrictions as to age and geographic location. You are responsible to read all Promotions rules to determine whether or not you are eligible to participate. If you enter any Promotion, you agree to abide by and to comply with all Promotions Rules.
         Additional terms and conditions may apply to purchases of goods or services on or through the Services, which terms and conditions are made a part of this Agreement by this reference.
         
         Typographical Errors
         In the event a product and/or service is listed at an incorrect price or with incorrect information due to typographical error, we shall have the right to refuse or cancel any orders placed for the product and/or service listed at the incorrect price. We shall have the right to refuse or cancel any such order whether or not the order has been confirmed and your credit card charged. If your credit card has already been charged for the purchase and your order is canceled, we shall immediately issue a credit to
         your credit card account or another payment account in the amount of the charge.
         
         Miscellaneous
         If for any reason a court of competent jurisdiction finds any provision or portion of these Terms & Conditions to be unenforceable, the remainder of these Terms & Conditions will continue in full force and effect. Any waiver of any provision of these Terms & Conditions will be effective only if in writing and signed by an authorized representative of MEOps. MEOps will be entitled to injunctive or other equitable relief (without the obligations of posting any bond or surety) in the event of any breach or anticipatory breach by you. MEOps operates and controls the MEOps Service from its offices in India. The Service is not intended for distribution to or use by any person or entity in any jurisdiction or country where such distribution or use would be contrary to law or regulation. Accordingly, those persons who choose to access the MEOps Service from other locations do so on their own initiative and are solely responsible for compliance with local laws, if and to the extent local laws are applicable. These Terms & Conditions (which include and incorporate the MEOps Privacy Policy) contain the entire understanding, and supersedes all prior understandings, between you and MEOps concerning its subject matter, and cannot be changed or modified by you. The section headings used in this Agreement are for convenience only and will not be given any legal import.
         
         Disclaimer
         MEOps is not responsible for any content, code or any other imprecision.
         MEOps does not provide warranties or guarantees.
         In no event shall MEOps be liable for any special, direct, indirect, consequential, or incidental damages or any damages whatsoever, whether in an action of contract, negligence or other tort, arising out of or in connection with the use of the Service or the contents of the Service. The Company reserves the right to make additions, deletions, or modifications to the contents on the Service at any time without prior notice.
         The MEOps Service and its contents are provided "as is" and "as available" without any warranty or representations of any kind, whether express or implied. MEOps is a distributor and not a publisher of the content supplied by third parties; as such, MEOps exercises no editorial control over such content and makes no warranty or representation as to the accuracy, reliability or currency of any information, content, service or merchandise provided through or accessible via the MEOps Service. Without limiting the foregoing, MEOps specifically disclaims all warranties and representations in any content transmitted on or in connection with the MEOps Service or on sites that may appear as links on the MEOps Service, or in the products provided as a part of, or otherwise in connection with, the MEOps Service, including without limitation any warranties of merchantability, fitness for a particular purpose or non-infringement of third party rights. No oral advice or written information given by MEOps or any of its affiliates, employees, officers, directors, agents, or the like will create a warranty. Price and availability information is subject to change without notice. Without limiting the foregoing, MEOps does not warrant that the MEOps Service will be uninterrupted, uncorrupted, timely, or error-free.
         
         Contact Us
         Don't hesitate to contact us if you have any questions via email: admin@generation360.in """,
                    style: primaryFont.copyWith(color: Colors.black,fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
           ),
         ),
    );
  }
}