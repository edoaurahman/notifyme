import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:home_widget/home_widget.dart';
import 'package:notifyme/app/modules/home/providers/resi_provider.dart';
import 'package:workmanager/workmanager.dart';
import '../resi_model.dart';
import '../views/home_view.dart';

@pragma("vm:entry-point")
void callbackDispatcher() {
  Workmanager().executeTask((taskName, inputData) async {
    final now = DateTime.now();
    final hour = now.hour;
    final minute = now.minute.toString().padLeft(2, '0');
    final time = '$hour:$minute';

    final resiProvider = Get.put(ResiProvider());
    String resi = '';
    await HomeWidget.getWidgetData<String>('title', defaultValue: 'Default Title')
        .then((value) => {
      resi = value!,
    });
    String message = '[$time] ';
    final Resi? res = await resiProvider.getResi(resi);
    if (res != null && res.data != null && res.data!.trackingList != null) {
      List<TrackingList>? trackingList = res.data!.trackingList;
      message += trackingList!.first.message!;
    }
    //
    await HomeWidget.saveWidgetData<String>('message', message);
    await HomeWidget.updateWidget(
        name: 'HomeWidgetExampleProvider', iOSName: 'HomeWidgetExample');
    Get.delete<ResiProvider>();
    return Future.value(true);
  });
}

class HomeController extends GetxController {
  final TextEditingController resiController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  final resiProvider = Get.find<ResiProvider>();

  final message = ''.obs;

  @override
  void onInit() async {
    super.onInit();
    Workmanager().initialize(callbackDispatcher, isInDebugMode: kDebugMode);
    // For IOS
    HomeWidget.setAppGroupId('1');
    HomeWidget.registerBackgroundCallback(backgroundCallback);
    await HomeWidget.getWidgetData<String>('title', defaultValue: 'Default Title')
        .then((value) => {
      resiController.text = value!,
    });
    await HomeWidget.getWidgetData<String>('message', defaultValue: 'Default Title')
        .then((value) => {
      bodyController.text = value!,
    });
  }

  @override
  void onClose() {
    bodyController.dispose();
    resiController.dispose();
    super.onClose();
  }

  Future<void> cekResi() async {
    final Resi? res = await resiProvider.getResi(resiController.text);
    GetStorage().write('resi', resiController.text);
    if (res != null && res.data != null && res.data!.trackingList != null) {
      List<TrackingList>? trackingList = res.data!.trackingList;
      message.value = trackingList!.first.message!;
      bodyController.text = message.value;
      sendAndUpdate();
    }
  }

  Future _sendData() async {
    try {
      return Future.wait([
        HomeWidget.saveWidgetData<String>('title', resiController.text),
        HomeWidget.saveWidgetData<String>('message', bodyController.text),
        HomeWidget.renderFlutterWidget(
          const Icon(
            Icons.flutter_dash,
            size: 200,
          ),
          logicalSize: const Size(200, 200),
          key: 'dashIcon',
        ),
      ]);
    } on PlatformException catch (exception) {
      debugPrint('Error Sending Data. $exception');
    }
  }

  Future _updateWidget() async {
    try {
      return HomeWidget.updateWidget(
        name: 'HomeWidgetExampleProvider',
        iOSName: 'HomeWidgetExample',
      );
    } on PlatformException catch (exception) {
      debugPrint('Error Updating Widget. $exception');
    }
  }

  Future loadData() async {
    try {
      return Future.wait([
        HomeWidget.getWidgetData<String>('title', defaultValue: 'Default Title')
            .then((value) => resiController.text = value ?? ''),
        HomeWidget.getWidgetData<String>('message',
            defaultValue: 'Default Message')
            .then((value) => bodyController.text = value ?? ''),
      ]);
    } on PlatformException catch (exception) {
      debugPrint('Error Getting Data. $exception');
    }
  }

  Future<void> sendAndUpdate() async {
    await _sendData();
    await _updateWidget();
  }

  void checkForWidgetLaunch() {
    HomeWidget.initiallyLaunchedFromHomeWidget().then(_launchedFromWidget);
  }

  void _launchedFromWidget(Uri? uri) {
    if (uri != null) {
      showDialog(
        context: Get.context!,
        builder: (buildContext) => AlertDialog(
          title: const Text('App started from HomeScreenWidget'),
          content: Text('Here is the URI: $uri'),
        ),
      );
    }
  }

  void startBackgroundUpdate() {
    Workmanager().registerPeriodicTask(
      '1',
      'widgetBackgroundUpdate',
      frequency: const Duration(minutes: 15),
    );
    // Workmanager().registerOneOffTask('1', 'widgetBackgroundUpdate',initialDelay: const Duration(seconds: 2));
  }

  void stopBackgroundUpdate() {
    Workmanager().cancelByUniqueName('1');
  }
}
