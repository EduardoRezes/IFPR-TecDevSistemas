import 'Client.dart';
import 'Item.dart';
import 'Product.dart';

class Sale {
  Client client;
  List<Item> items;

  Sale({
    required this.client,
    required this.items,
  });

  double get valueTotal {
    double total = 0;
    for (var item in items) {
      total += item.priceSele;
    }
    return total;
  }
}


void main() {
  var sale = Sale(
    client: Client(
      name: 'John',
      cpf: '000.000.000-00',
    ),
    items: <Item>[
      Item(
        product: Product(
          name: 'Bread',
          price: 33.00,
        ),
        quantity: 5,
      ),
      Item(
        product: Product(
          name: 'Pencil',
          price: 6.00,
          percentDiscount: 0.5,
        ),
        quantity: 10,
      ),
    ],
  );
  print('The value of sale is ${sale.valueTotal}');
}
