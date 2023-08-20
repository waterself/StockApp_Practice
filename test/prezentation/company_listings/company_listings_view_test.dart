import 'package:flutter_test/flutter_test.dart';
import 'package:stock_app/data/repository/stock_repository_impl.dart';
import 'package:stock_app/data/source/local/stock_dao.dart';
import 'package:stock_app/data/source/remote/stock_api.dart';
import 'package:stock_app/presentation/company_listings/company_listings_view_model.dart';

void main() {
  test('company_listing_view_model data loading test', () async {
    final api = StockApi();
    final dao = StockDao();
    final viewModel = CompanyListingsViewModel(StockRepositoryImpl(api, dao));

    await Future.delayed(const Duration(seconds: 3));

    expect(viewModel.state.companies.isNotEmpty, true);
  });
}
