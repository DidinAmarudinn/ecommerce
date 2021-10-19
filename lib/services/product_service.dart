import 'dart:convert';

import 'package:ecommerce/common/api_path.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  Future<List<ProductModel>> getProduct() async {
    String url = baseUrl + product;
    var header = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: header);
    print(response.body);
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];
      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }
      return products;
    } else {
      throw Exception("Gagal Mengambil Data Product");
    }
  }
}
