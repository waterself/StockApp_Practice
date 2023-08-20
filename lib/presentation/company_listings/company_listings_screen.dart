﻿import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:stock_app/data/repository/stock_repository_impl.dart';
import 'package:stock_app/domain/repository/stock_repository.dart';
import 'package:stock_app/presentation/company_info/company_info_screen.dart';
import 'package:stock_app/presentation/company_info/company_info_view_model.dart';
import 'package:stock_app/presentation/company_listings/company_listings_actions.dart';
import 'package:stock_app/presentation/company_listings/company_listings_view_model.dart';

class CompanyListingsScreen extends StatelessWidget {
  const CompanyListingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CompanyListingsViewModel>();
    final state = viewModel.state;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (query) {
                  // TODO: 검색
                  viewModel.onAction(
                      CompanyListingsActions.onSearchQueryChange(query));
                },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2.0)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2.0),
                  ),
                  labelText: 'search...',
                ),
              ),
            ),
            Expanded(
                child: RefreshIndicator(
              child: ListView.builder(
                itemCount: state.companies.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(state.companies[index].name),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              final repository =
                                  GetIt.instance<StockRepository>();
                              context.read<StockRepository>();
                              final symbol = state.companies[index].symbol;
                              return ChangeNotifierProvider(
                                create: (context) =>
                                    CompanyInfoViewModel(repository, symbol),
                                child: const CompanyInfoScreen(),
                              );
                            },
                          ));
                        },
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  );
                },
              ),
              // TODO: 새로고침
              onRefresh: () async {
                viewModel.onAction(const CompanyListingsActions.refresh());
              },
            ))
          ],
        ),
      ),
    );
  }
}
