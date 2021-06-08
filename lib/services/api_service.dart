import 'dart:async';
import 'dart:convert';

import 'package:covid_19_app/models/covid.dart';
import 'package:http/http.dart' as http;

Future<Covid> fetchCovid() async {
  final response = await http.get(
    Uri.parse('https://api.kawalcorona.com/indonesia'),
  );
  final jsonresponse = json.decode(response.body);

  if (response.statusCode == 200) {
    return Covid.fromJson(
      jsonresponse[0],
    );
  } else {
    throw Exception('Failed to load data');
  }
}
