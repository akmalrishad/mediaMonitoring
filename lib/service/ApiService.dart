import 'package:web_media_monitoring/model/loginModel.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<LoginResponseModel?> login(String email, String password) async {
    final Uri apiUrl = Uri.parse("http://localhost/8000/user");

    final response =
        await http.post(apiUrl, body: {"email": email, "password": password});

    if (response.statusCode == 200) {
      final String responseString = response.body;
      return loginResponseModelFromJson(responseString);
    } else {
      return null;
    }
  }
}
