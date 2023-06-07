import 'package:http/http.dart' as http;

void main() async {
  await getDataUser();
}

Future getDataUser() async {
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/todos/");
  var response = await http.get(url);

  print(response.statusCode);
  if (response.statusCode != 200) {
    print("TIDAK DAPAT DATA DARI SERVER");
  } else {
    print(response.body);
  }
}
