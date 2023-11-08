class ImageModel {
  String? message;
  List<Data>? data;

  ImageModel({this.message, this.data});

  ImageModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? photoStatus;
  String? photoType;
  Null rejectReason;
  String? imagePath;

  Data({this.photoStatus, this.photoType, this.rejectReason, this.imagePath});

  Data.fromJson(Map<String, dynamic> json) {
    photoStatus = json['photo_status'];
    photoType = json['photo_type'];
    rejectReason = json['reject_reason'];
    imagePath = json['image_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['photo_status'] = photoStatus;
    data['photo_type'] = photoType;
    data['reject_reason'] = rejectReason;
    data['image_path'] = imagePath;
    return data;
  }
}
