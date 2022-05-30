part of 'get_productions_bloc.dart';

@freezed
class GetProductionsState with _$GetProductionsState {
  const factory GetProductionsState.initial() = _Initial;
  const factory GetProductionsState.loading() = _Loading;
  const factory GetProductionsState.productsGotten(List<Production> prods) =
      _ProductsGotten;
  const factory GetProductionsState.failure(String message) = _Failure;
}
