import 'package:delivery_dart/app/models/product_model.dart';

abstract class ProductsRepository {
  Future<List<ProductModel>> findProducts();
}
