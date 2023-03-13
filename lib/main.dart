import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/controllers/auth_controllers.dart';
import 'package:meops/src/controllers/category_controller.dart';
import 'package:meops/src/controllers/home_controller.dart';
import 'package:meops/src/controllers/professional%20controller/professional_list_controller.dart';
import 'package:meops/src/controllers/update_kyc_controller.dart';
import 'package:meops/src/views/signUp_view/select_role_screen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  AwesomeNotifications().initialize(
  // set the icon to null if you want to use the default app icon
  null,
  [
    NotificationChannel(
        channelGroupKey: 'basic_channel_group',
        channelKey: 'basic_channel',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests',
        defaultColor: const Color(0xFF9D50DD),
        importance:NotificationImportance.High,
        playSound: true,
        ledColor: Colors.white)
  ],
  // Channel groups are only visual and are not required
  channelGroups: [
    NotificationChannelGroup(
        channelGroupName: 'Basic group', channelGroupkey: '')
  ],
  debug: true
);

AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
  if (!isAllowed) {
    // This is just a basic example. For real apps, you must show some
    // friendly dialog box before call the request method.
    // This is very important to not harm the user experience
    AwesomeNotifications().requestPermissionToSendNotifications();
  }
});

firebaseNotification();

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  print('Got a message whilst in the foreground!');
  print('Message data: ${message.data}');

  if (message.notification != null) {
    print('Message also contained a notification: ${message.notification}');

     AwesomeNotifications().createNotification(
                  content: NotificationContent(
                  id: 10,
                  channelKey: 'basic_channel',
                  title: message.notification!.title,
                  body: message.notification!.body,
               ),
              );
  }
});

  initializeDateFormatting().then((_) => runApp(const MyApp()));
  // Get.put(UpdateKycController());
  Get.put(CategoryController());
  Get.put(AuthController());
  Get.put(HomeController());
  Get.put(ProfessionController());
}

firebaseNotification()async{
  FirebaseMessaging messaging = FirebaseMessaging.instance;

 NotificationSettings settings = await messaging.requestPermission(
  alert: true,
  announcement: false,
  badge: true,
  carPlay: false,
  criticalAlert: false,
  provisional: false,
  sound: true,
);

print('User granted permission: ${settings.authorizationStatus}');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meops',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SelectRoleScreen(),
      // home: (),
    );
  }
}
