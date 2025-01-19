import 'package:get/get.dart';
import 'package:notifyme/config.dart';

import '../resi_model.dart';

class ResiProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = Config.API_URL;
  }

  Future<Resi?> getResi(String resi,String expedition) async {
    final response = await get('cekresi?sls_tracking_number=$resi&type=$expedition');
    if(response.statusCode != 200) {
      Get.snackbar('Error', 'Failed to get data');
      return null;
    }
    return Resi.fromJson(response.body);
  }
}
