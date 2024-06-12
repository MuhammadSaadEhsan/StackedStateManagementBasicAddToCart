class CounterDataService {
  var productList = [
    {"name": "banana", "price": "100", "quality": "special"},
    {"name": "apple", "price": "400", "quality": "normal"},
    {"name": "grapes", "price": "1200", "quality": "special"},
    {"name": "cherry", "price": "140", "quality": "normal"},
    {"name": "strawberry", "price": "450", "quality": "export"},
  ];

  var cart = [];

  cartAdder(int num) {
    cart.add(productList[num]);
  }

  cartDeleter(int num) {
    // cart.remove(cart[num]);
    print(num);
    if (num >= 0 && num < cart.length) {
      cart.removeAt(num);
    } else {
      print('Attempted to remove item at invalid index: $num');
    }
  }

  var counter = 0;
  counterUpdater() {
    counter++;
    // rebuildUi();
  }
}
