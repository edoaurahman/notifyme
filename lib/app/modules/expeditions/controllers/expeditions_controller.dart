import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notifyme/app/components/expedition_dropdown.dart';
import 'package:notifyme/app/model/expeditions.dart';
import 'package:notifyme/app/model/type/expedition.dart';
import 'package:notifyme/app/modules/expeditions/providers/expedition_provider.dart';

class ExpeditionsController extends GetxController {
  final Rx<Expeditions> listExpeditions = Expeditions().obs;
  final TextEditingController expeditionSelected = TextEditingController();
  final TextEditingController textResiController = TextEditingController();
  final TextEditingController textEmailController = TextEditingController();
  final TextEditingController textStatusController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    fetchExpeditions();
  }

  void fetchExpeditions() async {
    listExpeditions.value = Expeditions();
    final expeditionProvider = Get.find<ExpeditionProvider>();
    final response = await expeditionProvider.getExpeditions();
    if (response.status.hasError) {
      Get.snackbar('Error', response.statusText!);
    } else {
      listExpeditions.value = Expeditions.fromJson(response.body);
    }
  }

  void showDialogAddExpedition() {
    Get.defaultDialog(
      title: 'Add Expedition',
      content: Column(
        children: <Widget>[
          ExpeditionsDropdown(expeditionSelected: expeditionSelected),
          TextField(
            controller: textResiController,
            decoration: const InputDecoration(labelText: 'Resi'),
          ),
          TextField(
            controller: textEmailController,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (textResiController.text.isNotEmpty &&
                textEmailController.text.isNotEmpty) {
              addExpedition();
              Get.back();
            } else {
              Get.snackbar('Fill all data', 'Please fill all data');
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }

  void addExpedition() async {
    final expeditionProvider = Get.find<ExpeditionProvider>();
    final requestData = Expedition(
        slsTrackingNumber: textResiController.text,
        type: expeditionSelected.text,
        email: textEmailController.text);
    final response = await expeditionProvider.addExpedition(requestData);

    if (response.status.hasError) {
      Get.snackbar('Error', response.statusText!);
    } else {
      Get.snackbar('Success', 'Expedition added');
      fetchExpeditions();
    }
    expeditionSelected.clear();
    textResiController.clear();
    textEmailController.clear();
  }

  void showUpdateExpeditionDialog(String resi) {
    Get.defaultDialog(
      title: 'Update Expedition',
      content: Column(
        children: <Widget>[
          Text('Resi: $resi'),
          ExpeditionStatusDropdown(statusSelected: textStatusController)
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (textStatusController.text.isNotEmpty) {
              updateExpedition(resi, textStatusController.text);
              Get.back();
            } else {
              Get.snackbar('Fill all data', 'Please fill all data');
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }

  void updateExpedition(String resi,String status) async {
    final expeditionProvider = Get.find<ExpeditionProvider>();
    final response = await expeditionProvider.updateExpedition(resi, status);
    if (response.status.hasError) {
      Get.snackbar('Error', response.statusText!);
    } else {
      Get.snackbar('Success', 'Expedition updated');
      fetchExpeditions();
    }
    textEmailController.clear();
  }
}
