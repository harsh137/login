import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:login_page/controller/user_model.dart';

class ApiService {
  Future login(RequestModel RequestModel) async {
    Uri url = Uri.parse(
        "http://ec2-3-215-209-80.compute-1.amazonaws.com/mietjammu/apis/auth.php");
    final res = await http.post(url, body: RequestModel.ToJson());
    if (res.statusCode == 200 || res.statusCode == 400) {
      // print(json.decode(res.body));
      return ResponseModel.fromJson(json.decode(res.body));
    } else {
      throw Exception("failed to load data");
    }
  }
}
