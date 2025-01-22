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
            () => ListView(
              children: <Widget>[
                if (controller.listExpeditions.value.isEmpty &&
                    controller.isLoading.value) ...[
                  const Column(
                    children: [
                      SizedBox(height: 20),
                      CircularProgressIndicator(),
                      SizedBox(height: 20),
                      Text('Loading...'),
                    ],
                  )
                ] else if (controller.listExpeditions.value.isNotEmpty) ...[
                  for (var item in controller.listExpeditions.value) ...[
                    InkWell(
                      onTap: () {
                        controller.showUpdateExpeditionDialog(item.trackingNum);
                      },
                      child: Card(
                        child: ListTile(
                          title: Text('${item.packageName} - ${item.status}'),
                          subtitle: Text(item.details),
                        ),
                      ),
                    ),
                  ],
                ] else ...[
                  const Center(
                    child: Text('No Data'),
                  )
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
