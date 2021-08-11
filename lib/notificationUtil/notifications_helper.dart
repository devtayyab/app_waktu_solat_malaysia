import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rxdart/subjects.dart' as rxsub;
import 'package:timezone/timezone.dart';
import '../CONSTANTS.dart';

final rxsub.BehaviorSubject<NotificationClass>
    didReceiveLocalNotificationSubject =
    rxsub.BehaviorSubject<NotificationClass>();
final rxsub.BehaviorSubject<String?> selectNotificationSubject =
    rxsub.BehaviorSubject<String?>();

class NotificationClass {
  final int? id;
  final String? title;
  final String? body;
  final String? payload;

  NotificationClass({this.id, this.body, this.payload, this.title});
}

Future<void> initNotifications(
    FlutterLocalNotificationsPlugin notifsPlugin) async {
  var initializationSettingsAndroid =
      const AndroidInitializationSettings('icon');
  var initializationSettingsIOS = IOSInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
      onDidReceiveLocalNotification:
          (int id, String? title, String? body, String? payload) async {
        didReceiveLocalNotificationSubject.add(NotificationClass(
            id: id, title: title, body: body, payload: payload));
      });
  var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  await notifsPlugin.initialize(initializationSettings,
      onSelectNotification: (String? payload) async {
    if (payload != null) {
      print('notification payload: ' + payload);
    }
    selectNotificationSubject.add(payload);
  });
}

// void requestIOSPermissions(
//     FlutterLocalNotificationsPlugin notifsPlugin) {
//   notifsPlugin
//       .resolvePlatformSpecificImplementation<
//           IOSFlutterLocalNotificationsPlugin>()
//       ?.requestPermissions(
//         alert: true,
//         badge: true,
//         sound: true,
//       );
// }

void configureSelectNotificationSubject(BuildContext context) {
  selectNotificationSubject.stream.listen((String? payload) async {
    if (payload == kPayloadMonthly) {
      Fluttertoast.showToast(
          msg:
              'Please wait for a few seconds for the notification to be resheduled',
          toastLength: Toast.LENGTH_LONG);
    } else if (payload == kPayloadDebug) {
      Fluttertoast.showToast(
          msg: 'Debug payload here!', toastLength: Toast.LENGTH_SHORT);
    }
  });
}

Future<void> schedulePrayerNotification(
    //for main prayer functionality
    {required FlutterLocalNotificationsPlugin notifsPlugin,
    required String name,
    required int id,
    required String title,
    required String body,
    required TZDateTime scheduledTime}) async {
  BigTextStyleInformation styleInformation =
      BigTextStyleInformation(body, summaryText: 'Summary text');
  var androidSpecifics = AndroidNotificationDetails(
    '$name id', // This specifies the ID of the Notification
    '$name notification', // This specifies the name of the notification channel
    'Scheduled daily prayer notification', //This specifies the description of the channel
    priority: Priority.max,
    importance: Importance.high,
    styleInformation: styleInformation,
    color: const Color(0xFF19e3cb),
  );
  var iOSSpecifics = const IOSNotificationDetails();
  var platformChannelSpecifics =
      NotificationDetails(android: androidSpecifics, iOS: iOSSpecifics);
  await notifsPlugin.zonedSchedule(
      id, title, body, scheduledTime, platformChannelSpecifics,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation
              .absoluteTime); // This literally schedules the notification
}

Future<void> scheduleAlertNotification(
    //for main prayer functionality
    {required FlutterLocalNotificationsPlugin notifsPlugin,
    required int id,
    required String title,
    required String body,
    String? payload,
    required TZDateTime scheduledTime}) async {
  BigTextStyleInformation styleInformation = BigTextStyleInformation(body);
  var androidSpecifics = AndroidNotificationDetails(
    'Alert id', // This specifies the ID of the Notification
    'Alert notification', // This specifies the name of the notification channel
    'Alerts and reminders to user', //This specifies the description of the channel
    priority: Priority.defaultPriority,
    importance: Importance.high,
    styleInformation: styleInformation,
    color: const Color(0xFFfcbd00),
  );

  var iOSSpecifics = const IOSNotificationDetails();
  var platformChannelSpecifics =
      NotificationDetails(android: androidSpecifics, iOS: iOSSpecifics);
  await notifsPlugin.zonedSchedule(
      id, title, body, scheduledTime, platformChannelSpecifics,
      androidAllowWhileIdle: true,
      payload: payload,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation
              .absoluteTime); // This literally schedules the notification
}

Future<void> showDebugNotification() async {
  //to test notifocation can show?
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
          'Debug id', 'Debug channel', 'Notification debug test',
          importance: Importance.defaultImportance,
          priority: Priority.high,
          ticker: 'ticker');
  const NotificationDetails platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
  );
  await FlutterLocalNotificationsPlugin()
      .show(0, 'Debug ', 'For developer purposes', platformChannelSpecifics);
}
