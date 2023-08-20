// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:stock_app/domain/repository/stock_repository.dart';
import 'package:stock_app/presentation/company_info/company_info_state.dart';

class CompanyInfoViewModel with ChangeNotifier {
  final StockRepository _repository;
  CompanyInfoViewModel(this._repository, String symbol) {
    loadCompanyInfo(symbol);
  }

  var _state = const CompanyInfoState();

  CompanyInfoState get state => _state;

  void loadCompanyInfo(String symbol) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getCompanyInfo(symbol);

    result.when(
      success: (info) {
        _state = state.copyWith(
            companyInfo: info, isLoading: false, errorMessage: null);
      },
      error: (e) {
        _state = state.copyWith(
            companyInfo: null, isLoading: false, errorMessage: e.toString());
      },
    );
    notifyListeners();
  }
}
