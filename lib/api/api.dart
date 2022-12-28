import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Parametros
const baseUrl = "https://api.airtable.com/v0/";
// Parametros
const apiKey = "key8odHntSyvZzBty";
const baseId = "appuhG4ubfHRI41aE";

const tableIdVersion = 'tblPN2mLK38JsGbNg';
const fieldIdCurrent = 'fldcDZ8sEadf2u0ty';
 
class Api {

  // VERSION
  Future currentVersion() async {
    debugPrint('\nDEBUG Api.currentVersion()');

    final response = await http.get(
      // Uri.parse('$url/$baseId/$tableIdVersion/$fieldIdCurrent'),
      // Uri.parse('https://api.airtable.com/v0/appuhG4ubfHRI41aE/version/recFAqiynn61WpA84'),
      Uri.parse('$baseUrl/$baseId/$tableIdVersion/$fieldIdCurrent'),
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer $apiKey',
        HttpHeaders.contentTypeHeader: "application/json",
      }
    );
    // final response = await Dio().get(
    //   'https://api.airtable.com/v0/$baseId/$tableIdVersion',
    //   options: Options(
    //     contentType: 'Application/json',
    //     headers: {
    //       'Authorization': 'Bearer $apiKey',
    //       'Accept': 'Application/json',
    //     },
    //   ),
    // );
    // final response = await http.get(
    //   Uri.parse('$baseUrl/$baseId/$tableIdVersion?api_key=$apiKey&maxRecords=100'),
    //   headers: {
    //     HttpHeaders.authorizationHeader: 'Bearer $apiKey',
    //     HttpHeaders.contentTypeHeader: "application/json",
    //   }
    //   );
    return json.decode(response.body);
    // return json.decode(response.data);
  }
}