import 'package:ecommerce/model/category_model.dart';
import 'package:ecommerce/model/galerry_model.dart';

class ProductModel {
  int? id;
  String? name;
  double? price;
  String? description;
  String? tags;
  CategoryModel? categoryModel;
  DateTime? createdAt;
  DateTime? updateAt;
  List<GalleryModel>? galleries;

  ProductModel(
      {this.id,
      this.name,
      this.price,
      this.description,
      this.tags,
      this.categoryModel,
      this.createdAt,
      this.updateAt,
      this.galleries});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json['tags'];
    categoryModel = CategoryModel.fromJson(json['category']);
    galleries = json["galleries"]
        .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
        .toList();
    createdAt = DateTime.parse(json["created_at"]);
    updateAt = DateTime.parse(json["updated_at"]);
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "tags": tags,
        "category": categoryModel!.toJson(),
        "galleries": galleries!.map((e) => e.toJson()).toList(),
        "created_at": createdAt.toString(),
        "updated_at": updateAt.toString(),
      };
}
