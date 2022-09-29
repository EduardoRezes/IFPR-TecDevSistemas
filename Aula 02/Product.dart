class Product {
  int code;
  String name;
  double price;
  double percentDiscount;
  // turn the attribute into a private attribute
  int _stock = 0;

/**
 * Initializer a constructor, parameterized, using {} so that the parameters are optional
 */
  Product({
    this.code = 0,
    this.name = '',
    this.price = 0.0,
    this.percentDiscount = 0,
  });

  double priceWithDiscount() {
    return price - (price * percentDiscount / 100);
  }

  /**
     * The getter is a attribute that returns the value of the attribute priceWithDiscount
     * In the dart get and set can be access like attributes
     * its not necessary to use the parenthesis ()
     */
  double get priceWithDiscount2 {
    return price - (price * percentDiscount / 100);
  }

  void set stock(int value) {
    if (value > 0) {
      _stock = value;
    } else {
        print('The value of stock must be greater than or equal to zero');
    }
  }

  // return the value of the attribute _stock
  // Sintax sugar
  int get stock => _stock;
}

// main() {
//   var p1 = Product(
//     name: 'Pencil',
//     price: 6.00,
//     percentDiscount: 0.5,
//   );
//   print('The value of product ${p1.name} is ${p1.price}');
//   p1.stock = -1;
//   print('The value of product ${p1.name} with discount of ${p1.percentDiscount}% is ${p1.priceWithDiscount()}');
// }
