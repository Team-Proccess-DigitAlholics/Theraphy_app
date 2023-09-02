import 'dart:convert';
import 'dart:io';


import 'package:http/http.dart' as http;

import '../model/treatment.dart';

class HttpHelper {
  final String urlBase =
      'https://backendproyectotheraphy-production-5698.up.railway.app/api/v1';


Future<List<Treatment>?> getTreatments() async {
    const String endpoint = '/treatments';
    final String url = '$urlBase$endpoint';

    http.Response response = await http.get(Uri.parse(url));

    if(response.statusCode == HttpStatus.ok){
      final jsonResponse = json.decode(response.body);
      final List<dynamic> treatmentsMap = jsonResponse['content'];
      final List<Treatment> treatments = treatmentsMap.map((map) => Treatment.fromJson(map)).toList();
      return treatments;
    } else {
      return null;
    }
}

  
  
  Future<List<Treatment>?> getTreatment() async {
    const String endpoint = '/treatments'; // Ruta del endpoint específico
    final String url = '$urlBase$endpoint'; // URL completo

    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(response.body);
      final List treatmentsMap = jsonResponse['content'];
      final List<Treatment> treatments = 
      treatmentsMap.map((map) => Treatment.fromJson(map)).toList();
      return treatments;    
    }else{
      return null;
    }
  }

  Future<List<Treatment>?> addTreatment(Treatment newTreatment, int physiotherapistId) async {
    const String strartpoint = '/physiotherapists/';
    const String endpoint = '/treatments';
    final String url = '$urlBase$strartpoint$physiotherapistId$endpoint';

  final Map<String, dynamic> requestBody = {
    'id': newTreatment.id,
    'title': newTreatment.title,
    'description': newTreatment.description,
    'sessionsQuantity': newTreatment.sessionsQuantity,
    'physiotherapistId': physiotherapistId,
    'photoUrl': newTreatment.photoUrl,
  };

  final encodedBody = json.encode(requestBody);

  http.Response response = await http.post(
    Uri.parse(url),
    body: encodedBody,
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 201) {
    final jsonResponse = json.decode(response.body);
    final List treatmentsMap = jsonResponse['content'];
    final List<Treatment> treatments = treatmentsMap
        .map((map) => Treatment.fromJson(map))
        .toList();
    return treatments;
  } else {
    return null;
  }
}
  
}