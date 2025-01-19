import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expeditions_controller.dart';

class ExpeditionsView extends GetView<ExpeditionsController> {
  const ExpeditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List All Expeditions'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.showDialogAddExpedition();
        },
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          controller.fetchExpeditions();
        },
        child: Center(
            child: Obx(
          () => Column(
            children: <Widget>[
              if (controller.listExpeditions.value.data == null) ...[
                const SizedBox(height: 20),
                const CircularProgressIndicator(),
                const SizedBox(height: 20),
                const Text('Loading...'),
              ] else ...[
                for (var item in controller.listExpeditions.value.data!) ...[
                  InkWell(
                    onTap: () {
                      controller.showUpdateExpeditionDialog(item.trackingNum!);
                    },
                    child: Card(
                      child: ListTile(
                        title: Text('${item.expedition!} - ${item.status!}'),
                        subtitle: Text(item.details!),
                      ),
                    ),
                  ),
                ],
              ]
            ],
          ),
        )),
      ),
    );
  }
}
