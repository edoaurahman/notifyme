import 'package:get/get.dart';

import '../resi_model.dart';

class ResiProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Resi.fromJson(map);
      if (map is List) return map.map((item) => Resi.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'https://spx-golang.edodev.my.id/';
  }

  Future<Resi?> getResi(String resi) async {
    final response = await get('cekresi?sls_tracking_number=$resi');
    return response.body;
  }
}
