﻿import 'package:hive/hive.dart';
import 'package:stock_app/data/source/local/company_listing_entity.dart';

class StockDao {
  static const companyListing = 'companyListing';
  // stock.db

  //add
  Future<void> insertCompanyListings(
      List<CompanyListingEntity> companyListingEntities) async {
    final box =
        await Hive.openBox<CompanyListingEntity>('CompanyListingEntity');
    await box.addAll(companyListingEntities);
  }

  //clear
  Future<void> clearCompanyListings() async {
    final box =
        await Hive.openBox<CompanyListingEntity>('CompanyListingEntity');
    box.clear();
  }

  Future<List<CompanyListingEntity>> searchCompanyListing(String query) async {
    final box =
        await Hive.openBox<CompanyListingEntity>('CompanyListingEntity');

    final List<CompanyListingEntity> companyListing = box.values.toList();

    return companyListing
        .where((e) =>
            e.name.toLowerCase().contains(query.toLowerCase()) ||
            query.toUpperCase() == e.symbol)
        .toList();
  }
}
