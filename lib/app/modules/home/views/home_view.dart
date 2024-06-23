import 'dart:io';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_widget/home_widget.dart';
import 'package:notifyme/app/modules/home/providers/resi_provider.dart';
import 'package:notifyme/app/modules/home/resi_model.dart';
import '../controllers/home_controller.dart';

/// Called when Doing Background Work initiated from Widget
@pragma("vm:entry-point")
void backgroundCallback(Uri? data) async {
  final now = DateTime.now();
  final hour = now.hour;
  final minute = now.minute.toString().padLeft(2, '0');
  final time = '$hour:$minute';

  String resi = '';
  await HomeWidget.getWidgetData<String>('title', defaultValue: 'Default Title')
      .then((value) => {
        resi = value!,
  });
  String message = '[$time] ';
  final resiProvider = Get.put(ResiProvider());
  final Resi? res = await resiProvider.getResi(resi);
  if (res != null && res.data != null && res.data!.trackingList != null) {
    List<TrackingList>? trackingList = res.data!.trackingList;
    message += trackingList!.first.message!;
  }
  await HomeWidget.saveWidgetData<String>('message', message);
  await HomeWidget.updateWidget(
      name: 'HomeWidgetExampleProvider', iOSName: 'HomeWidgetExample');
  Get.delete<ResiProvider>();
}

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeWidget Example'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Resi',
                ),
                controller: controller.resiController,
              ),
              TextField(
                enabled: false,
                decoration: const InputDecoration(
                  hintText: 'Body',
                ),
                controller: controller.bodyController,
              ),
              ElevatedButton(
                onPressed: controller.cekResi,
                child: const Text('Send Data to Widget'),
              ),
              ElevatedButton(
                onPressed: controller.loadData,
                child: const Text('Load Data'),
              ),
              ElevatedButton(
                onPressed: controller.checkForWidgetLaunch,
                child: const Text('Check For Widget Launch'),
              ),
              if (Platform.isAndroid)
                ElevatedButton(
                  onPressed: controller.startBackgroundUpdate,
                  child: const Text('Update in background'),
                ),
              if (Platform.isAndroid)
                ElevatedButton(
                  onPressed: controller.stopBackgroundUpdate,
                  child: const Text('Stop updating in background'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
