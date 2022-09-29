import 'Product.dart';

class Item {
  Product product;
  int quantity;
  double _priceSele = 0; //encapsulation

  Item({
    this.quantity = 0,
    required this.product,
  });

  double get priceSele {
    if (_priceSele == 0) {
      _priceSele = product.priceWithDiscount2 * quantity;
    }
    return _priceSele;
  }

  set priceSele(double value) {
    if (value > 0) {
      _priceSele = value;
    }
  }
}

void main() {
  var i = Item(
      product: Product(
        name: 'Bread',
        price: 33.00,
      ),
      quantity: 5);
	print('The value of item ${i.product.name} is ${i.priceSele}');
}
