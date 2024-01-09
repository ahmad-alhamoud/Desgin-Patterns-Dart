class Singleton {
  // eager instantiation
  static final Singleton _instance = Singleton._internal();

  // generative constructor
  Singleton._internal() {
    print("Creating an instance of Singleton");
  }

  // factory constructor , should return same instance
  factory Singleton() {
    return _instance;
  }
}

void main(List<String> args) {
  Singleton s1 = Singleton();
  Singleton s2 = Singleton();
}
