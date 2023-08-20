﻿import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_app/domain/model/company_info.dart';
import 'package:stock_app/presentation/company_info/company_info_view_model.dart';

class CompanyInfoScreen extends StatelessWidget {
  const CompanyInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewmodel = context.watch<CompanyInfoViewModel>();
    final state = viewmodel.state;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          if (state.errorMessage != null)
            Center(child: Text(state.errorMessage!)),
          if (state.isLoading)
            Center(
              child: CircularProgressIndicator(),
            ),
          if (state.isLoading == false && state.errorMessage == null)
            _buildBody(state.companyInfo!)
        ],
      )),
    );
  }

  Widget _buildBody(CompanyInfo companyInfo) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Text(companyInfo.name),
          Text(companyInfo.symbol),
          Text(companyInfo.industy),
          Text(companyInfo.country),
        ]));
  }
}
