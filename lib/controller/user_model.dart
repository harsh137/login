class ResponseModel {
  bool success;
  int responsecode;
  String message;
  ResponseModel(this.success, this.responsecode, this.message);
  factory ResponseModel.fromJson(json) {
    return ResponseModel(json["success"] ?? "" as bool,
        json["responsecode"] ?? 0 as int, json["message"] ?? "" as String);
  }
}

class RequestModel {
  RequestModel(this.username, this.password);
  var username = "";
  var password = "";

  Map ToJson() {
    Map map = {
      "username": username,
      "password": password,
    };
    return map;
  }
}
