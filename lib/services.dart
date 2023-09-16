import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();
  Future getData() async {
    log("into getData");
    try {
      final respose = await client.get(Uri.parse(
          "https://mocki.io/v1/15705f88-069f-40cc-a6b2-65e0c3f20465"));

      log("respose ::=> ${respose.body}");

      if (respose.statusCode == 200) {
        return json.decode(respose.body);
      } else {
        return null;
      }
    } catch (e, stackTrace) {
      log("message $e $stackTrace");
    }
  }
}
