import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hotel/constant.dart';

class NotificationController extends GetxController {
  var generalNotification = false.obs;
  var sound = false.obs;
  var vibrate = false.obs;
  var appUpdate = false.obs;
  var newServiceAvailable = false.obs;
  var newTipAvailable = false.obs;
}

class NotiScreen extends StatefulWidget {
  NotiScreen({super.key});

  @override
  State<NotiScreen> createState() => _NotiScreenState();
}

class _NotiScreenState extends State<NotiScreen> {
  final NotificationController _notificationController =
      Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      floatingActionButton: _signButton(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            _builGeneralNotification(),
            SizedBox(height: 10),
            _buildSound(),
            SizedBox(height: 10),
            _buildVibrate(),
            SizedBox(height: 10),
            _builAppUpdate(),
            SizedBox(height: 10),
            _builNewServiceAvailable(),
            SizedBox(height: 10),
            _builNewTipAvalible()
          ],
        ),
      ),
    );
  }

  Widget _builGeneralNotification() => Obx(() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "General Notification",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
          CupertinoSwitch(
            activeColor: green,
            value: _notificationController.generalNotification.value,
            onChanged: (value) {
              _notificationController.generalNotification.value = value;
            },
          )
        ],
      ));

  Widget _buildSound() => Obx(() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Sound",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
          CupertinoSwitch(
            activeColor: green,
            value: _notificationController.sound.value,
            onChanged: (value) {
              _notificationController.sound.value = value;
            },
          )
        ],
      ));

  Widget _buildVibrate() => Obx(() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Vibrate",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
          CupertinoSwitch(
            activeColor: green,
            value: _notificationController.vibrate.value,
            onChanged: (value) {
              _notificationController.vibrate.value = value;
            },
          )
        ],
      ));

  Widget _builAppUpdate() => Obx(() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "App Update",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
          CupertinoSwitch(
            activeColor: green,
            value: _notificationController.appUpdate.value,
            onChanged: (value) {
              _notificationController.appUpdate.value = value;
            },
          )
        ],
      ));

  Widget _builNewServiceAvailable() => Obx(() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "New Service Available",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
          CupertinoSwitch(
            activeColor: green,
            value: _notificationController.newServiceAvailable.value,
            onChanged: (value) {
              _notificationController.newServiceAvailable.value = value;
            },
          )
        ],
      ));

  Widget _builNewTipAvalible() => Obx(() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "New Tips Available ",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
          CupertinoSwitch(
            activeColor: green,
            value: _notificationController.newTipAvailable.value,
            onChanged: (value) {
              _notificationController.newTipAvailable.value = value;
            },
          )
        ],
      ));

  Widget _signButton() => ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(370, 60),
          backgroundColor: green,
        ),
        onPressed: () {
          // Get.to(Login());
        },
        child: Center(
          child: Text(
            'Update',
            style: TextStyle(color: white, fontSize: 17),
          ),
        ),
      );
}
