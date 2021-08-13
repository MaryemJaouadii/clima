import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    //Uri myUri = Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$kApiKey');
    Uri myUri = Uri.parse(url);

    http.Response response = await http.get(myUri);

    if (response.statusCode == 200) {
      String data = response.body;
      // print(data);

      /* var longitude = jsonDecode(data)['coord']['lon'];
    print(longitude);

    var weatherdesc = jsonDecode(data)['weather'][0]['description'];
    print(weatherdesc);*/

      return jsonDecode(data);


    }
    else {
      print(response.statusCode);
    }
  }
}