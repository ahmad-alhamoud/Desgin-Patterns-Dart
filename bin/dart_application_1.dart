void main() {
  Counter obj1 = Counter();
  // print(obj1.lock.toString());
  Counter obj2 = Counter();
  obj1.count++;
  obj2.count++;
  obj2.count++;
  obj2.count++;
}

class Counter {
  int count = 0;
  Counter._internal();
  static var counter = null;
  factory Counter() {
    if (counter == null) {
      counter = Counter._internal();
    }
    return counter; 
  }
}
