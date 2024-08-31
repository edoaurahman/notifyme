class JntCargo {
  int? code;
  String? msg;
  List<Data>? data;
  bool? fail;
  bool? succ;

  JntCargo({this.code, this.msg, this.data, this.fail, this.succ});

  JntCargo.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = json['data'].map<Data>((v) => Data.fromJson(v)).toList();
    }
    fail = json['fail'];
    succ = json['succ'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['msg'] = msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['fail'] = fail;
    data['succ'] = succ;
    return data;
  }
}

class Data {
  String? keyword;
  List<Details>? details;
  String? expressTypeName;
  double? packageTotalWeight;
  double? packageTotalVolume;
  String? collectTime;
  Null senderName;
  Null senderMobilePhone;
  Null senderTelphone;
  Null senderPostalCode;
  Null senderCountryId;
  Null senderCountryName;
  Null senderProvinceId;
  Null senderProvinceName;
  Null senderCityId;
  String? senderCityName;
  Null senderAreaId;
  Null senderAreaName;
  Null senderTownship;
  Null senderStreet;
  Null senderDetailedAddress;
  Null receiverName;
  Null receiverMobilePhone;
  Null receiverTelphone;
  Null receiverPostalCode;
  Null receiverCountryId;
  Null receiverCountryName;
  Null receiverProvinceId;
  Null receiverProvinceName;
  Null receiverCityId;
  String? receiverCityName;
  Null receiverAreaId;
  Null receiverAreaName;
  Null receiverTownship;
  Null receiverStreet;
  Null receiverDetailedAddress;
  Null insuredAmount;
  Null insuredFee;
  Null goodsTypeCode;
  Null goodsTypeName;
  Null goodsName;
  int? packageNumber;
  Null expressTypeCode;
  Null dispatchCode;
  Null dispatchName;
  Null paidModeCode;
  Null paidModeName;
  Null packageChargeWeight;
  Null packageType;
  Null packageTypeName;
  Null dispatchStaffCode;
  Null dispatchStaffMobile;
  Null dispatchStaffName;
  Null collectStaffCode;
  Null collectStaffCodeMobile;
  Null collectStaffName;
  Null destinationId;
  Null destinationCode;
  Null destinationName;
  Null originId;
  Null originCode;
  Null originName;
  Null dispatchNetworkId;
  Null dispatchNetworkCode;
  Null dispatchNetworkCodeMobile;
  Null dispatchNetworkName;
  Null pickNetworkId;
  Null pickNetworkCode;
  Null pickNetworkCodeMobile;
  Null pickNetworkName;
  Null waybillStatusCode;
  Null dispatchTime;
  bool? damageFlag;
  bool? lostFlag;
  bool? claimFlag;

  Data(
      {this.keyword,
        this.details,
        this.expressTypeName,
        this.packageTotalWeight,
        this.packageTotalVolume,
        this.collectTime,
        this.senderName,
        this.senderMobilePhone,
        this.senderTelphone,
        this.senderPostalCode,
        this.senderCountryId,
        this.senderCountryName,
        this.senderProvinceId,
        this.senderProvinceName,
        this.senderCityId,
        this.senderCityName,
        this.senderAreaId,
        this.senderAreaName,
        this.senderTownship,
        this.senderStreet,
        this.senderDetailedAddress,
        this.receiverName,
        this.receiverMobilePhone,
        this.receiverTelphone,
        this.receiverPostalCode,
        this.receiverCountryId,
        this.receiverCountryName,
        this.receiverProvinceId,
        this.receiverProvinceName,
        this.receiverCityId,
        this.receiverCityName,
        this.receiverAreaId,
        this.receiverAreaName,
        this.receiverTownship,
        this.receiverStreet,
        this.receiverDetailedAddress,
        this.insuredAmount,
        this.insuredFee,
        this.goodsTypeCode,
        this.goodsTypeName,
        this.goodsName,
        this.packageNumber,
        this.expressTypeCode,
        this.dispatchCode,
        this.dispatchName,
        this.paidModeCode,
        this.paidModeName,
        this.packageChargeWeight,
        this.packageType,
        this.packageTypeName,
        this.dispatchStaffCode,
        this.dispatchStaffMobile,
        this.dispatchStaffName,
        this.collectStaffCode,
        this.collectStaffCodeMobile,
        this.collectStaffName,
        this.destinationId,
        this.destinationCode,
        this.destinationName,
        this.originId,
        this.originCode,
        this.originName,
        this.dispatchNetworkId,
        this.dispatchNetworkCode,
        this.dispatchNetworkCodeMobile,
        this.dispatchNetworkName,
        this.pickNetworkId,
        this.pickNetworkCode,
        this.pickNetworkCodeMobile,
        this.pickNetworkName,
        this.waybillStatusCode,
        this.dispatchTime,
        this.damageFlag,
        this.lostFlag,
        this.claimFlag});

  Data.fromJson(Map<String, dynamic> json) {
    keyword = json['keyword'];
    if (json['details'] != null) {
      details = <Details>[];
      json['details'].forEach((v) {
        details!.add(Details.fromJson(v));
      });
    }
    expressTypeName = json['expressTypeName'];
    packageTotalWeight = json['packageTotalWeight'];
    packageTotalVolume = json['packageTotalVolume'];
    collectTime = json['collectTime'];
    senderName = json['senderName'];
    senderMobilePhone = json['senderMobilePhone'];
    senderTelphone = json['senderTelphone'];
    senderPostalCode = json['senderPostalCode'];
    senderCountryId = json['senderCountryId'];
    senderCountryName = json['senderCountryName'];
    senderProvinceId = json['senderProvinceId'];
    senderProvinceName = json['senderProvinceName'];
    senderCityId = json['senderCityId'];
    senderCityName = json['senderCityName'];
    senderAreaId = json['senderAreaId'];
    senderAreaName = json['senderAreaName'];
    senderTownship = json['senderTownship'];
    senderStreet = json['senderStreet'];
    senderDetailedAddress = json['senderDetailedAddress'];
    receiverName = json['receiverName'];
    receiverMobilePhone = json['receiverMobilePhone'];
    receiverTelphone = json['receiverTelphone'];
    receiverPostalCode = json['receiverPostalCode'];
    receiverCountryId = json['receiverCountryId'];
    receiverCountryName = json['receiverCountryName'];
    receiverProvinceId = json['receiverProvinceId'];
    receiverProvinceName = json['receiverProvinceName'];
    receiverCityId = json['receiverCityId'];
    receiverCityName = json['receiverCityName'];
    receiverAreaId = json['receiverAreaId'];
    receiverAreaName = json['receiverAreaName'];
    receiverTownship = json['receiverTownship'];
    receiverStreet = json['receiverStreet'];
    receiverDetailedAddress = json['receiverDetailedAddress'];
    insuredAmount = json['insuredAmount'];
    insuredFee = json['insuredFee'];
    goodsTypeCode = json['goodsTypeCode'];
    goodsTypeName = json['goodsTypeName'];
    goodsName = json['goodsName'];
    packageNumber = json['packageNumber'];
    expressTypeCode = json['expressTypeCode'];
    dispatchCode = json['dispatchCode'];
    dispatchName = json['dispatchName'];
    paidModeCode = json['paidModeCode'];
    paidModeName = json['paidModeName'];
    packageChargeWeight = json['packageChargeWeight'];
    packageType = json['packageType'];
    packageTypeName = json['packageTypeName'];
    dispatchStaffCode = json['dispatchStaffCode'];
    dispatchStaffMobile = json['dispatchStaffMobile'];
    dispatchStaffName = json['dispatchStaffName'];
    collectStaffCode = json['collectStaffCode'];
    collectStaffCodeMobile = json['collectStaffCodeMobile'];
    collectStaffName = json['collectStaffName'];
    destinationId = json['destinationId'];
    destinationCode = json['destinationCode'];
    destinationName = json['destinationName'];
    originId = json['originId'];
    originCode = json['originCode'];
    originName = json['originName'];
    dispatchNetworkId = json['dispatchNetworkId'];
    dispatchNetworkCode = json['dispatchNetworkCode'];
    dispatchNetworkCodeMobile = json['dispatchNetworkCodeMobile'];
    dispatchNetworkName = json['dispatchNetworkName'];
    pickNetworkId = json['pickNetworkId'];
    pickNetworkCode = json['pickNetworkCode'];
    pickNetworkCodeMobile = json['pickNetworkCodeMobile'];
    pickNetworkName = json['pickNetworkName'];
    waybillStatusCode = json['waybillStatusCode'];
    dispatchTime = json['dispatchTime'];
    damageFlag = json['damageFlag'];
    lostFlag = json['lostFlag'];
    claimFlag = json['claimFlag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['keyword'] = keyword;
    if (details != null) {
      data['details'] = details!.map((v) => v.toJson()).toList();
    }
    data['expressTypeName'] = expressTypeName;
    data['packageTotalWeight'] = packageTotalWeight;
    data['packageTotalVolume'] = packageTotalVolume;
    data['collectTime'] = collectTime;
    data['senderName'] = senderName;
    data['senderMobilePhone'] = senderMobilePhone;
    data['senderTelphone'] = senderTelphone;
    data['senderPostalCode'] = senderPostalCode;
    data['senderCountryId'] = senderCountryId;
    data['senderCountryName'] = senderCountryName;
    data['senderProvinceId'] = senderProvinceId;
    data['senderProvinceName'] = senderProvinceName;
    data['senderCityId'] = senderCityId;
    data['senderCityName'] = senderCityName;
    data['senderAreaId'] = senderAreaId;
    data['senderAreaName'] = senderAreaName;
    data['senderTownship'] = senderTownship;
    data['senderStreet'] = senderStreet;
    data['senderDetailedAddress'] = senderDetailedAddress;
    data['receiverName'] = receiverName;
    data['receiverMobilePhone'] = receiverMobilePhone;
    data['receiverTelphone'] = receiverTelphone;
    data['receiverPostalCode'] = receiverPostalCode;
    data['receiverCountryId'] = receiverCountryId;
    data['receiverCountryName'] = receiverCountryName;
    data['receiverProvinceId'] = receiverProvinceId;
    data['receiverProvinceName'] = receiverProvinceName;
    data['receiverCityId'] = receiverCityId;
    data['receiverCityName'] = receiverCityName;
    data['receiverAreaId'] = receiverAreaId;
    data['receiverAreaName'] = receiverAreaName;
    data['receiverTownship'] = receiverTownship;
    data['receiverStreet'] = receiverStreet;
    data['receiverDetailedAddress'] = receiverDetailedAddress;
    data['insuredAmount'] = insuredAmount;
    data['insuredFee'] = insuredFee;
    data['goodsTypeCode'] = goodsTypeCode;
    data['goodsTypeName'] = goodsTypeName;
    data['goodsName'] = goodsName;
    data['packageNumber'] = packageNumber;
    data['expressTypeCode'] = expressTypeCode;
    data['dispatchCode'] = dispatchCode;
    data['dispatchName'] = dispatchName;
    data['paidModeCode'] = paidModeCode;
    data['paidModeName'] = paidModeName;
    data['packageChargeWeight'] = packageChargeWeight;
    data['packageType'] = packageType;
    data['packageTypeName'] = packageTypeName;
    data['dispatchStaffCode'] = dispatchStaffCode;
    data['dispatchStaffMobile'] = dispatchStaffMobile;
    data['dispatchStaffName'] = dispatchStaffName;
    data['collectStaffCode'] = collectStaffCode;
    data['collectStaffCodeMobile'] = collectStaffCodeMobile;
    data['collectStaffName'] = collectStaffName;
    data['destinationId'] = destinationId;
    data['destinationCode'] = destinationCode;
    data['destinationName'] = destinationName;
    data['originId'] = originId;
    data['originCode'] = originCode;
    data['originName'] = originName;
    data['dispatchNetworkId'] = dispatchNetworkId;
    data['dispatchNetworkCode'] = dispatchNetworkCode;
    data['dispatchNetworkCodeMobile'] = dispatchNetworkCodeMobile;
    data['dispatchNetworkName'] = dispatchNetworkName;
    data['pickNetworkId'] = pickNetworkId;
    data['pickNetworkCode'] = pickNetworkCode;
    data['pickNetworkCodeMobile'] = pickNetworkCodeMobile;
    data['pickNetworkName'] = pickNetworkName;
    data['waybillStatusCode'] = waybillStatusCode;
    data['dispatchTime'] = dispatchTime;
    data['damageFlag'] = damageFlag;
    data['lostFlag'] = lostFlag;
    data['claimFlag'] = claimFlag;
    return data;
  }
}

class Details {
  int? change;
  int? index;
  String? billCode;
  String? scanTime;
  String? scanTypeName;
  String? scanNetworkName;
  int? scanNetworkId;
  String? scanByName;
  String? nextStopName;
  String? remark2;
  String? remark4;
  String? customerTracking;
  int? code;
  String? status;
  String? taskCode;
  String? scanNetworkCode;
  String? scanNetworkCity;
  String? scanNetworkProvince;
  String? scanNetworkTypeId;
  String? scanNetworkTypeName;
  String? scanNetworkContact;
  String? nextStopTypeId;
  String? nextStopTypeName;
  String? nextNetworkId;
  String? nextNetworkCode;
  String? scanNetworkArea;
  int? nextNetworkProvinceId;
  int? nextNetworkCityId;
  int? nextNetworkAreaId;
  String? uploadTime;
  String? length;
  String? width;
  String? high;
  String? weight;
  String? staffName;
  String? staffContact;
  String? deliveryTelephone;

  Details(
      {this.change,
        this.index,
        this.billCode,
        this.scanTime,
        this.scanTypeName,
        this.scanNetworkName,
        this.scanNetworkId,
        this.scanByName,
        this.nextStopName,
        this.remark2,
        this.remark4,
        this.customerTracking,
        this.code,
        this.status,
        this.taskCode,
        this.scanNetworkCode,
        this.scanNetworkCity,
        this.scanNetworkProvince,
        this.scanNetworkTypeId,
        this.scanNetworkTypeName,
        this.scanNetworkContact,
        this.nextStopTypeId,
        this.nextStopTypeName,
        this.nextNetworkId,
        this.nextNetworkCode,
        this.scanNetworkArea,
        this.nextNetworkProvinceId,
        this.nextNetworkCityId,
        this.nextNetworkAreaId,
        this.uploadTime,
        this.length,
        this.width,
        this.high,
        this.weight,
        this.staffName,
        this.staffContact,
        this.deliveryTelephone});

  Details.fromJson(Map<String, dynamic> json) {
    change = json['change'];
    index = json['index'];
    billCode = json['billCode'];
    scanTime = json['scanTime'];
    scanTypeName = json['scanTypeName'];
    scanNetworkName = json['scanNetworkName'];
    scanNetworkId = json['scanNetworkId'];
    scanByName = json['scanByName'];
    nextStopName = json['nextStopName'];
    remark2 = json['remark2'];
    remark4 = json['remark4'];
    customerTracking = json['customerTracking'];
    code = json['code'];
    status = json['status'];
    taskCode = json['taskCode'];
    scanNetworkCode = json['scanNetworkCode'];
    scanNetworkCity = json['scanNetworkCity'];
    scanNetworkProvince = json['scanNetworkProvince'];
    scanNetworkTypeId = json['scanNetworkTypeId'];
    scanNetworkTypeName = json['scanNetworkTypeName'];
    scanNetworkContact = json['scanNetworkContact'];
    nextStopTypeId = json['nextStopTypeId'];
    nextStopTypeName = json['nextStopTypeName'];
    nextNetworkId = json['nextNetworkId'];
    nextNetworkCode = json['nextNetworkCode'];
    scanNetworkArea = json['scanNetworkArea'];
    nextNetworkProvinceId = json['nextNetworkProvinceId'];
    nextNetworkCityId = json['nextNetworkCityId'];
    nextNetworkAreaId = json['nextNetworkAreaId'];
    uploadTime = json['uploadTime'];
    length = json['length'];
    width = json['width'];
    high = json['high'];
    weight = json['weight'];
    staffName = json['staffName'];
    staffContact = json['staffContact'];
    deliveryTelephone = json['deliveryTelephone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['change'] = change;
    data['index'] = index;
    data['billCode'] = billCode;
    data['scanTime'] = scanTime;
    data['scanTypeName'] = scanTypeName;
    data['scanNetworkName'] = scanNetworkName;
    data['scanNetworkId'] = scanNetworkId;
    data['scanByName'] = scanByName;
    data['nextStopName'] = nextStopName;
    data['remark2'] = remark2;
    data['remark4'] = remark4;
    data['customerTracking'] = customerTracking;
    data['code'] = code;
    data['status'] = status;
    data['taskCode'] = taskCode;
    data['scanNetworkCode'] = scanNetworkCode;
    data['scanNetworkCity'] = scanNetworkCity;
    data['scanNetworkProvince'] = scanNetworkProvince;
    data['scanNetworkTypeId'] = scanNetworkTypeId;
    data['scanNetworkTypeName'] = scanNetworkTypeName;
    data['scanNetworkContact'] = scanNetworkContact;
    data['nextStopTypeId'] = nextStopTypeId;
    data['nextStopTypeName'] = nextStopTypeName;
    data['nextNetworkId'] = nextNetworkId;
    data['nextNetworkCode'] = nextNetworkCode;
    data['scanNetworkArea'] = scanNetworkArea;
    data['nextNetworkProvinceId'] = nextNetworkProvinceId;
    data['nextNetworkCityId'] = nextNetworkCityId;
    data['nextNetworkAreaId'] = nextNetworkAreaId;
    data['uploadTime'] = uploadTime;
    data['length'] = length;
    data['width'] = width;
    data['high'] = high;
    data['weight'] = weight;
    data['staffName'] = staffName;
    data['staffContact'] = staffContact;
    data['deliveryTelephone'] = deliveryTelephone;
    return data;
  }
}
