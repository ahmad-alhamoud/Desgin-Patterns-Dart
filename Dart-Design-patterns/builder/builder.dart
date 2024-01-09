///

class Pizza {
  int? _diameter;
  String? _name;
  String? _cheese;
  String? _crust;
  Set<String>? _topping;
  Pizza(PizzaBuilder pizzaBuilder) {
    _diameter = pizzaBuilder._diameter;
    _name = pizzaBuilder._name;
    _cheese = pizzaBuilder._cheese;
    _crust = pizzaBuilder._crust;
    _topping = pizzaBuilder._topping;
  }

  @override
  String toString() {
    return "Pizza $_diameter, $_name , $_cheese , $_crust , $_topping";
  }
}

class PizzaBuilder {
  int? _diameter;
  String? _name;
  String? _cheese;
  String? _crust;
  Set<String>? _topping;
  PizzaBuilder(this._name, this._diameter);

  String? get cheese => _cheese;
  void set cheese(String? value) {
    _cheese = value;
  }

  String? get crust => _crust;
  void set crust(String? value) {
    crust = value;
  }

  Set<String>? get topping => _topping;
  
  void set topping(Set<String>? value) {
    _topping = value;
  }

  Pizza build() {
    return Pizza(this);
  }
}

void main() {
  PizzaBuilder builder = PizzaBuilder("Margherita",3);
  builder.cheese = "mozzarella ";
  builder.topping = Set.from(["Rounded Shape"]);
  Pizza pizza = builder.build();
  String result = pizza.toString();
  print(result);

}
