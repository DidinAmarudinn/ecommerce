import 'package:ecommerce/common/enum_state.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/services/product_service.dart';
import 'package:flutter/foundation.dart';

class ProductProvider extends ChangeNotifier {
  ProductProvider() {
    _fetchRestaurantList();
  }

  List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  String? _message;
  ResponseResult? _resultState;

  String get message => _message ?? "";
  ResponseResult get resultState => _resultState ?? ResponseResult.Loading;

  Future<dynamic> _fetchRestaurantList() async {
    try {
      _resultState = ResponseResult.Loading;
      notifyListeners();
      final products = await ProductService().getProduct();
      if (products.isEmpty) {
        _resultState = ResponseResult.NoData;
        notifyListeners();
        return _message = "No Data";
      } else {
        _resultState = ResponseResult.HasData;

        notifyListeners();
        return _products = products;
      }
    } catch (e) {
      _resultState = ResponseResult.Error;
      notifyListeners();
      return _message = "check your conectivity";
    }
  }
}
