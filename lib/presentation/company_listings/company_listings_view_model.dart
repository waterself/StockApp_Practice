import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:stock_app/domain/repository/stock_repository.dart';
import 'package:stock_app/presentation/company_listings/company_listings_actions.dart';
import 'package:stock_app/presentation/company_listings/company_listings_state.dart';

class CompanyListingsViewModel with ChangeNotifier {
  final StockRepository _repository;

  CompanyListingsState _state = const CompanyListingsState();
  CompanyListingsState get state => _state;

  Timer? _debounce;

  CompanyListingsViewModel(this._repository) {
    _getCompanyListings();
  }

  void onAction(CompanyListingsActions action) {
    action.when(
      refresh: () => _getCompanyListings(fetchFromRemote: true),
      onSearchQueryChange: (query) {
        _debounce?.cancel();
        _debounce = Timer(const Duration(milliseconds: 500), () {
          _getCompanyListings(query: query);
        });
      },
    );
  }

  Future<void> _getCompanyListings(
      {bool fetchFromRemote = false, String query = ''}) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getCompanyListings(fetchFromRemote, query);

    result.when(success: (listings) {
      _state = state.copyWith(
        companies: listings,
      );
    }, error: (e) {
      // TODO: 리모드 에러처리
      print('remote error');
    });

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
