import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_listings_actions.freezed.dart';

@freezed
class CompanyListingsActions with _$CompanyListingsActions {
  const factory CompanyListingsActions.refresh() = Refresh;
  const factory CompanyListingsActions.onSearchQueryChange(String query) =
      OnSearchQueryChange;
}
