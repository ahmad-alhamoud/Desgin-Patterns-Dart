class Singleton {
  static Singleton? _instance;

  // private constructor
  Singleton._internal() {
    print("Creating an instance of Singleton");
  }

  // lazy instantization
  static Singleton get instance {
    _instance ??= Singleton._internal();
    return _instance!;
  }
}

void main(List<String> args) {
  Singleton clientOne = Singleton.instance;
  Singleton clientTwo = Singleton.instance;
  print(clientOne == clientTwo) ;
}
