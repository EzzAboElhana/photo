class OtpModel {
  String? type;
  String? msg;
  Data? data;

  OtpModel({this.type, this.msg, this.data});

  OtpModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? smsid;
  int? sent;
  int? failed;
  String? reciver;

  Data({this.smsid, this.sent, this.failed, this.reciver});

  Data.fromJson(Map<String, dynamic> json) {
    smsid = json['smsid'];
    sent = json['sent'];
    failed = json['failed'];
    reciver = json['reciver'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['smsid'] = this.smsid;
    data['sent'] = this.sent;
    data['failed'] = this.failed;
    data['reciver'] = this.reciver;
    return data;
  }
}
