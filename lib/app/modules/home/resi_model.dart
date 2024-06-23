class Resi {
  String? message;
  Data? data;
  int? retcode;

  Resi({this.message, this.data, this.retcode});

  Resi.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? Data?.fromJson(json['data']) : null;
    retcode = json['retcode'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    if (data['data'] != null) {
      data['data'] = data['data']?.toJson();
    }
    data['retcode'] = retcode;
    return data;
  }
}

class Data {
  String? deliveryType;
  String? currentStatus;
  String? recipientName;
  String? phone;
  int? needTranslate;
  List<TrackingList>? trackingList;
  String? slsTrackingNumber;
  List<StatusList>? statusList;

  Data(
      {this.deliveryType,
      this.currentStatus,
      this.recipientName,
      this.phone,
      this.needTranslate,
      this.trackingList,
      this.slsTrackingNumber,
      this.statusList});

  Data.fromJson(Map<String, dynamic> json) {
    deliveryType = json['delivery_type'];
    currentStatus = json['current_status'];
    recipientName = json['recipient_name'];
    phone = json['phone'];
    needTranslate = json['need_translate'];
    if (json['tracking_list'] != null) {
      trackingList = <TrackingList>[];
      json['tracking_list'].forEach((v) {
        trackingList?.add(TrackingList.fromJson(v));
      });
    }
    slsTrackingNumber = json['sls_tracking_number'];
    if (json['status_list'] != null) {
      statusList = <StatusList>[];
      json['status_list'].forEach((v) {
        statusList?.add(StatusList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['delivery_type'] = deliveryType;
    data['current_status'] = currentStatus;
    data['recipient_name'] = recipientName;
    data['phone'] = phone;
    data['need_translate'] = needTranslate;
    if (trackingList != null) {
      data['tracking_list'] = trackingList?.map((v) => v.toJson()).toList();
    }
    data['sls_tracking_number'] = slsTrackingNumber;
    if (statusList != null) {
      data['status_list'] = statusList?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TrackingList {
  String? status;
  int? timestamp;
  String? message;

  TrackingList({this.status, this.timestamp, this.message});

  TrackingList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    timestamp = json['timestamp'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['timestamp'] = timestamp;
    data['message'] = message;
    return data;
  }
}

class StatusList {
  int? timestamp;
  int? code;
  String? stateLs;
  String? icon;
  String? text;

  StatusList({this.timestamp, this.code, this.stateLs, this.icon, this.text});

  StatusList.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'];
    code = json['code'];
    stateLs = json['state_ls'];
    icon = json['icon'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['timestamp'] = timestamp;
    data['code'] = code;
    data['state_ls'] = stateLs;
    data['icon'] = icon;
    data['text'] = text;
    return data;
  }
}
