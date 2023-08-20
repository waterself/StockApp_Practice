﻿import 'package:csv/csv.dart';
import 'package:stock_app/data/csv/csv_parser.dart';
import 'package:stock_app/domain/model/company_listing.dart';

class CompanyListingParser implements CsvParser<CompanyListing> {
  @override
  Future<List<CompanyListing>> parse(String csvString) async {
    // TODO: implement parse

    List<List<dynamic>> csvValues =
        const CsvToListConverter().convert(csvString);
    //delete field name
    csvValues.removeAt(0);

    return csvValues
        .map((e) {
          final symbol = e[0] ?? '';
          final name = e[1] ?? '';
          final exchange = e[2] ?? '';
          return CompanyListing(symbol: symbol, name: name, exchange: exchange);
        })
        .where((e) =>
            e.symbol.isNotEmpty && e.name.isNotEmpty && e.exchange.isNotEmpty)
        .toList();
  }
}
