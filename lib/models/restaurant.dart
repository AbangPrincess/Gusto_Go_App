import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:gusto_go_app_final/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy beef patty topped with melted cheese, served in a soft bun with lettuce, tomato, pickles, onions, and condiments like ketchup, mustard, and mayonnaise.",
      imagePath: "lib/images/burgers/Classic-Cheeseburger.jpg",
      price: 60.00,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 10.00),
        Addon(name: "Extra Patty", price: 20.00),
        Addon(name: "Lettuce", price: 2.00),
      ],
    ),
    Food(
      name: "Breakfast Burger",
      description: "A beef patty topped with a fried egg, bacon, cheese, and hash browns, served in a soft bun with ketchup and mayo.",
      imagePath: "lib/images/burgers/Breakfast-Burger.jpg",
      price: 60.00,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 10.00),
        Addon(name: "Extra Patty", price: 20.00),
        Addon(name: "Lettuce", price: 1.00),
      ],
    ),
    Food(
      name: "Chicken Burger",
      description: "A grilled or fried chicken breast, served in a bun with lettuce, tomato, pickles, and mayo.",
      imagePath: "lib/images/burgers/Chicken-Burger.jpg",
      price: 60.00,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 30.00),
        Addon(name: "Pickles", price: 1.00),
        Addon(name: "Lettuce", price: 1.00),
      ],
    ),
    Food(
      name: "Korean BBQ Burger",
      description: "A beef patty glazed with Korean BBQ sauce, topped with kimchi, and served in a bun with lettuce and a spicy mayo.",
      imagePath: "lib/images/burgers/Korean-BBQ-Burger-1.jpg",
      price: 80.00,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra kimchi", price: 30.00),
        Addon(name: "Patty", price: 20.00),
        Addon(name: "Lettuce", price: 1.00),
      ],
    ),
    Food(
      name: "Salmon Burger",
      description: "A grilled salmon patty served in a bun with lettuce, tomato, red onion, and a dill sauce.",
      imagePath: "lib/images/burgers/Salmon-Burger.jpg",
      price: 60.00,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra Tomato", price: 3.00),
        Addon(name: "Extra Salmon", price: 20.00),
        Addon(name: "Lettuce", price: 1.00),
      ],
    ),

    //salads
    Food(
      name: "Antipasto Salad",
      description: "A mix of cured meats, cheeses, olives, and marinated vegetables, typically served with a light vinaigrette.",
      imagePath: "lib/images/salads/Antipasto-Salad-005.jpg",
      price: 50.00,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 2.00),
        Addon(name: "Extra Meat", price: 10.00),
        Addon(name: "Extra Olives", price: 8.00),
      ],
    ),
    Food(
      name: "Avocado Salad",
      description: "Sliced avocado served with mixed greens, cherry tomatoes, red onion, and a lime vinaigrette.",
      imagePath: "lib/images/salads/Avocado-Salad-003.jpg",
      price: 60.00,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra Tomato", price: 5.00),
        Addon(name: "Extra Red Onion", price: 3.00),
        Addon(name: "Peanut Bits", price: 5.00),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description: "Romaine lettuce tossed with Caesar dressing, croutons, and Parmesan cheese.",
      imagePath: "lib/images/salads/Caesar-Salad-054.jpg",
      price: 60.00,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra Dressing", price: 5.00),
        Addon(name: "Extra Cheese", price: 3.00),
        Addon(name: "Extra Lettuce", price: 2.00),
      ],
    ),
    Food(
      name: "Lentil Salad",
      description: "Cooked lentils mixed with diced vegetables, herbs, and a tangy vinaigrette.",
      imagePath: "lib/images/salads/Lentil-Salad-006.jpg",
      price: 60.00,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra Vegetable", price: 20.00),
        Addon(name: "Extra Herbs", price: 10.00),
        Addon(name: "Extra Vinaigrette", price: 10.00),
      ],
    ),
    Food(
      name: "Strawberry Salad",
      description: "Fresh strawberries served with mixed greens, nuts, feta cheese, and a balsamic vinaigrette.",
      imagePath: "lib/images/salads/Strawberry-Salad-0004.jpg",
      price: 60.00,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 10.00),
        Addon(name: "Extra Strawberry", price: 15.00),
        Addon(name: "Extra Nuts", price: 5.00),
      ],
    ),

    //desserts
    Food(
      name: "Buko Pie",
      description: "A coconut pie made with a creamy filling of young coconut meat and a flaky pastry crust.",
      imagePath: "lib/images/desserts/Buko-Pie-1-2.jpg",
      price: 50.00,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra Filling", price: 5.00),
        Addon(name: "Extra Coconut Meat", price: 5.00),
      ],
    ),
    Food(
      name: "Chocolate Ice Cream",
      description: "Creamy ice cream made with rich chocolate, sugar, milk, and cream.",
      imagePath: "lib/images/desserts/Chocolate-Ice-Cream-ice-cream-34732670-2203-1843.jpg",
      price: 30.00,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra Chocolate Fillings", price: 8.00),
      ],
    ),
    Food(
      name: "Cookies and Cream Ice Cream",
      description: "Vanilla ice cream mixed with crushed chocolate sandwich cookies.",
      imagePath: "lib/images/desserts/cookies_and_cream.jpg",
      price: 30.00,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra Cookies", price: 10.00),
      ],
    ),
    Food(
      name: "Leche Flan",
      description: "A rich and creamy custard dessert topped with a layer of caramel sauce.",
      imagePath: "lib/images/desserts/leche-flan-2187494_640.jpg",
      price: 40.00,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra Caramel Sauce", price: 10.00),
      ],
    ),
    Food(
      name: "Mais con Yelo",
      description: "A dessert made with shaved ice, sweet corn kernels, and evaporated milk.",
      imagePath: "lib/images/desserts/Mais-Con-Yelo-Recipe.jpg",
      price: 40.00,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra Sweet Corn", price: 5.00),
        Addon(name: "Extra Milk", price: 5.00),
        Addon(name: "Extra Ice", price: 3.00),
      ],
    ),

    //sides
    Food(
      name: "Fried Broccoli",
      description: "Broccoli florets lightly battered and fried until crispy.",
      imagePath: "lib/images/sides/Fried-Broccoli-007.jpg",
      price: 40.00,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra Butter", price: 5.00),
      ],
    ),
    Food(
      name: "Mashed Butternut Squash",
      description: "Cooked butternut squash mashed with butter, cream, and spices.",
      imagePath: "lib/images/sides/Mashed-Butternut-Squash-001.jpg",
      price: 50.00,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra Spices", price: 15.00),
      ],
    ),
    Food(
      name: "Mashed Potatoes",
      description: "Boiled potatoes mashed with butter, milk, and salt.",
      imagePath: "lib/images/sides/Mashed-Potatoes-004.jpg",
      price: 40.00,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra Milk", price: 10.00),
      ],
    ),
    Food(
      name: "Skillet Corn",
      description: "Corn kernels sautéed with butter, garlic, and herbs.",
      imagePath: "lib/images/sides/Skllet-Corn-003.jpg",
      price: 60.00,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra Kernels", price: 5.00),
        Addon(name: "Extra Herbs", price: 3.00),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Sweet potatoes cut into fries, seasoned, and baked or fried until crispy.",
      imagePath: "lib/images/sides/Sweet-Potato-Fries-006.jpg",
      price: 40.00,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Powdered Cheese", price: 5.00),
        Addon(name: "Spicy BBQ", price: 5.00),
        Addon(name: "Garlic Powder", price: 5.00),
      ],
    ),

    //drinks
    Food(
      name: "Buko Juice",
      description: "A refreshing drink made from young coconut water, sometimes with coconut meat.",
      imagePath: "lib/images/drinks/buko_juice.jpg",
      price: 30.00,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "With Ice", price: 3.00),
      ],
    ),
    Food(
      name: "Buko Pandan Drink",
      description: "A sweet drink made with young coconut, pandan-flavored jelly, and sweetened cream or milk.",
      imagePath: "lib/images/drinks/buko-pandan-drink-filipino-drinks.jpg",
      price: 30.00,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "With Ice", price: 3.00),
      ],
    ),
    Food(
      name: "Guinumis Drink",
      description: "A beverage made with sago pearls, coconut milk, pinipig (toasted rice), and sweetened with sugar.",
      imagePath: "lib/images/drinks/guinumis-filipino-drinks.jpg",
      price: 30.00,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "With Ice", price: 3.00),
      ],
    ),
    Food(
      name: "Mango Juice",
      description: "Fresh mangoes blended with water and sugar to create a refreshing juice.",
      imagePath: "lib/images/drinks/mango-juice-filipino-drinks.jpg",
      price: 30.00,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "With Ice", price: 3.00),
      ],
    ),
    Food(
      name: "Melon Juice",
      description: "Freshly grated cantaloupe mixed with water and sugar, served cold.",
      imagePath: "lib/images/drinks/melon_juice.jpg",
      price: 30.00,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "With Ice", price: 3.00),
      ],
    ),
  ];
  
  // user cart
    final List<CartItem> _cart = [];
  
  // delivery address (which user can change/update)
    String _deliveryAddress = 'Rafael Alunan Avenue, Poblacion, Koronadal City';
  
  /*

  G E T T E R s

  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*

  O P E R A T I O N S

  */

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the foood items are the same
      bool isSameFood = item.food == food;

      // check if the lkst of selected addons are the same
      bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quatity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
          ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }

    }

    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for(CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total num items in the cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear the cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }


  /*

  H E L P E R S

  */

  //generate a receipts
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

  // format the date to include up to seconds only
  String formattedDate =
    DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("----------");

  for (final cartItem in _cart){
    receipt.writeln(
      "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
    );
    if (cartItem.selectedAddons.isNotEmpty) {
      receipt.writeln("  Addons: ${_formatAddons(cartItem.selectedAddons)}");
    }
    receipt.writeln();
    }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }
  
  // format double value into money
  String _formatPrice(double price) {
    // ignore: unnecessary_string_escapes
    return "\₱${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
    .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
    .join(", ");
  }
}