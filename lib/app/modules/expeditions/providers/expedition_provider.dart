import 'package:get/get.dart';
import 'package:notifyme/app/model/type/expedition.dart';
import 'package:notifyme/config.dart';

class ExpeditionProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = Config.API_URL;
  }

  Future<Response> getExpeditions() => get('resi');

  Future<Response> addExpedition(Expedition data) async {
    final Map<String, String?> requestData = {
      'sls_tracking_number': data.slsTrackingNumber,
      'type': data.type,
      'email': data.email,
    };

    final response = await post('resi', requestData);
    return response;
  }

  Future<Response> updateExpedition(String resi, String status) async {
    final response =
        await put('resi?sls_tracking_number=$resi&status=$status', {});
    return response;
  }
}
