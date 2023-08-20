import 'package:stock_app/data/csv/company_listings_parser.dart';
import 'package:stock_app/data/mapper/company_mapper.dart';
import 'package:stock_app/data/source/local/stock_dao.dart';
import 'package:stock_app/data/source/remote/stock_api.dart';
import 'package:stock_app/domain/model/company_info.dart';
import 'package:stock_app/domain/model/company_listing.dart';

import 'package:stock_app/utils/result.dart';

import '../../domain/repository/stock_repository.dart';

class StockRepositoryImpl implements StockRepository {
  final StockApi _api;
  final StockDao _dao;
  final _parser = CompanyListingParser();

  StockRepositoryImpl(this._api, this._dao);

  @override
  Future<Result<List<CompanyListing>>> getCompanyListings(
      bool fetchFromRemote, String query) async {
    // TODO: implement getCompanyListings

    //search in loacl db
    final localListings = await _dao.searchCompanyListing(query);

    //else get data in remote
    final isDbEmpty = localListings.isEmpty && query.isEmpty;
    final shouldJustLoadFromCache = !isDbEmpty && !fetchFromRemote;

    //cache
    if (shouldJustLoadFromCache) {
      return Result.success(
          localListings.map((e) => e.toCompanyListing()).toList());
    }

    //remote
    try {
      final response = await _api.getListings();
      final remoteListings = await _parser.parse(response.body);

      //clear cache
      await _dao.clearCompanyListings();

      // cachein
      await _dao.insertCompanyListings(
          remoteListings.map((e) => e.toCompanyListingEntity()).toList());

      return Result.success(remoteListings);
    } catch (e) {
      return Result.error(Exception('data load fail'));
    }
  }

  @override
  Future<Result<CompanyInfo>> getCompanyInfo(String symbol) async {
    // TODO: implement getCompanyInfo
    try {
      final dto = await _api.getCompanyInfo(symbol: symbol);
      return Result.success(dto.toCompanyInfo());
    } catch (e) {
      return Result.error(Exception('회사정보 로드실패, ${e.toString()}'));
    }
  }
}
