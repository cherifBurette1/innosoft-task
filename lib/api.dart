import 'dart:convert';
import 'package:http/http.dart' as http;

class Apis {
  static dynamic getPosts() async {
    var response = await http.get("https://reqres.in/api/users");
    print(response.toString());
    var decodedResponse = json.decode(response.body);
    List newdecodedResponse = decodedResponse["data"] as List;
    return newdecodedResponse;
  }
}
