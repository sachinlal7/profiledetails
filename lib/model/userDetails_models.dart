class profileModel {
  String? success;
  String? message;
  Record? record;

  profileModel({this.success, this.message, this.record});

  profileModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    record =
        json['record'] != null ? new Record.fromJson(json['record']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.record != null) {
      data['record'] = this.record!.toJson();
    }
    return data;
  }
}

class Record {
  int? userId;
  String? memberId;
  String? fullName;
  String? phoneNumber;
  String? emailAddress;
  String? dateOfBirth;
  String? gender;
  String? latitude;
  String? longitude;
  String? address;
  String? aboutUs;
  int? city;
  String? cityName;
  int? materialStatus;
  String? materialStatusName;
  int? interestIn;
  int? lookingFor;
  String? lookingForName;
  int? ethnicity;
  String? ethnicityName;
  int? showAge;
  int? showEmail;
  int? distanceInvisible;
  int? distance;
  int? minAge;
  int? maxAge;
  int? newMatchNotification;
  int? messageNotification;
  int? messageLikesNotification;
  int? isLogin;
  int? status;
  String? imageName;

  Record(
      {this.userId,
      this.memberId,
      this.fullName,
      this.phoneNumber,
      this.emailAddress,
      this.dateOfBirth,
      this.gender,
      this.latitude,
      this.longitude,
      this.address,
      this.aboutUs,
      this.city,
      this.cityName,
      this.materialStatus,
      this.materialStatusName,
      this.interestIn,
      this.lookingFor,
      this.lookingForName,
      this.ethnicity,
      this.ethnicityName,
      this.showAge,
      this.showEmail,
      this.distanceInvisible,
      this.distance,
      this.minAge,
      this.maxAge,
      this.newMatchNotification,
      this.messageNotification,
      this.messageLikesNotification,
      this.isLogin,
      this.status,
      this.imageName});

  Record.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    memberId = json['member_id'];
    fullName = json['full_name'];
    phoneNumber = json['phone_number'];
    emailAddress = json['email_address'];
    dateOfBirth = json['date_of_birth'];
    gender = json['gender'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    aboutUs = json['about_us'];
    city = json['city'];
    cityName = json['city_name'];
    materialStatus = json['material_status'];
    materialStatusName = json['material_status_name'];
    interestIn = json['interest_in'];
    lookingFor = json['looking_for'];
    lookingForName = json['looking_for_name'];
    ethnicity = json['ethnicity'];
    ethnicityName = json['ethnicity_name'];
    showAge = json['show_age'];
    showEmail = json['show_email'];
    distanceInvisible = json['distance_invisible'];
    distance = json['distance'];
    minAge = json['min_age'];
    maxAge = json['max_age'];
    newMatchNotification = json['new_match_notification'];
    messageNotification = json['message_notification'];
    messageLikesNotification = json['message_likes_notification'];
    isLogin = json['is_login'];
    status = json['status'];
    imageName = json['image_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['member_id'] = this.memberId;
    data['full_name'] = this.fullName;
    data['phone_number'] = this.phoneNumber;
    data['email_address'] = this.emailAddress;
    data['date_of_birth'] = this.dateOfBirth;
    data['gender'] = this.gender;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['address'] = this.address;
    data['about_us'] = this.aboutUs;
    data['city'] = this.city;
    data['city_name'] = this.cityName;
    data['material_status'] = this.materialStatus;
    data['material_status_name'] = this.materialStatusName;
    data['interest_in'] = this.interestIn;
    data['looking_for'] = this.lookingFor;
    data['looking_for_name'] = this.lookingForName;
    data['ethnicity'] = this.ethnicity;
    data['ethnicity_name'] = this.ethnicityName;
    data['show_age'] = this.showAge;
    data['show_email'] = this.showEmail;
    data['distance_invisible'] = this.distanceInvisible;
    data['distance'] = this.distance;
    data['min_age'] = this.minAge;
    data['max_age'] = this.maxAge;
    data['new_match_notification'] = this.newMatchNotification;
    data['message_notification'] = this.messageNotification;
    data['message_likes_notification'] = this.messageLikesNotification;
    data['is_login'] = this.isLogin;
    data['status'] = this.status;
    data['image_name'] = this.imageName;
    return data;
  }
}
