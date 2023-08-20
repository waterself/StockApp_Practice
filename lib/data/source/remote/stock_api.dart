// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stock_app/data/source/remote/company_info_dto.dart';

class StockApi {
  static const baseURL = "https://www.alphavantage.co/";
  static const apiKey = 'CPHF9MZE22DU20LH';

  final http.Client _client;

  StockApi({http.Client? client}) : _client = (client ?? http.Client());

  Future<http.Response> getListings({String apiKey = apiKey}) async {
    return await _client.get(
        Uri.parse('$baseURL/query?function=LISTING_STATUS&apikey=$apiKey'));
  }
  // https://www.alphavantage.co/query?function=OVERVIEW&symbol=IBM&apikey=demo

  Future<CompanyInfoDto> getCompanyInfo(
      {required String symbol, String apiKey = apiKey}) async {
    final response = await _client.get(Uri.parse(
        '$baseURL/query?function=OVERVIEW&symbol=$symbol&apikey=$apiKey'));

    return CompanyInfoDto.fromJson(jsonDecode(response.body));
  }
}
