import 'dart:io';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_widget/home_widget.dart';
import 'package:notifyme/app/modules/home/providers/resi_provider.dart';
import 'package:notifyme/app/modules/home/resi_model.dart';
import '../controllers/home_controller.dart';

const List<String> list = <String>[
  'Select Expedition',
  'spx',
  'jnt-cargo',
  'jnt',
  'tokopedia',
  'sicepat',
  'jne'
];

/// Called when Doing Background Work initiated from Widget
@pragma("vm:entry-point")
void backgroundCallback(Uri? data) async {
  final now = DateTime.now();
  final hour = now.hour;
  final minute = now.minute.toString().padLeft(2, '0');
  final time = '$hour:$minute';

  late String resi;
  await HomeWidget.getWidgetData<String>('title', defaultValue: 'Default Title')
      .then((value) => {
            resi = value!,
          });
  late String expedition;
  await HomeWidget.getWidgetData<String>('expedition',
          defaultValue: 'Default Title')
      .then((value) => {
            expedition = value!,
          });
  String message = '[$time] ';
  final resiProvider = Get.put(ResiProvider());
  final Resi? res = await resiProvider.getResi(resi, expedition);
  if (res == null) {
    return;
  } else {
    final trackingList = res.details.first.message;
    message += trackingList;
  }
  await HomeWidget.saveWidgetData<String>('message', message);
  await HomeWidget.updateWidget(
      name: 'HomeWidgetExampleProvider', iOSName: 'HomeWidgetExample');
  Get.delete<ResiProvider>();
}

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  @override
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifyme'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              const ExpeditionsDropdown(),
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

class ExpeditionsDropdown extends StatefulWidget {
  const ExpeditionsDropdown({super.key});

  @override
  State<ExpeditionsDropdown> createState() => _ExpeditionsDropdownState();
}

class _ExpeditionsDropdownState extends State<ExpeditionsDropdown> {
  String dropdownValue = list.first;
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
          homeController.expeditionController.text = value;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value.toUpperCase());
      }).toList(),
    );
  }
}
