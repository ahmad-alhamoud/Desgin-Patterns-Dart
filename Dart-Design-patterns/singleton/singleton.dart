// Singleton create only one instace of a class

// first way with factory method
class Counter {
  Counter._internal();
  int count = 0;
  static final counter = Counter._internal();
  factory Counter() {
    return counter;
  }
}

// second way static field with getter
class Counter2 {
  Counter2._internal();
  int count = 0;
  static final Counter2 _instance = Counter2._internal();
  static Counter2 get instance => _instance;
}

// third way with static field

class Counter3 {
  Counter3._internal();
  static final Counter3 counter3 = Counter3._internal();
}

void main() {
  // testing the first way
  Counter user1 = Counter();
  Counter user2 = Counter();
  user1.count++;
  user2.count++;
  // both users have the same count value  ;
  // print(user1.count);

  // user1 and user2  share the same instance
  // print(user1 == user2);

  // testing the second way ;

  Counter2 obj1 = Counter2.instance;
  Counter2 obj2 = Counter2.instance;
  // print(obj1 == obj2);

  // testing the third way
  var singleton1 = Counter3.counter3;
  var singleton2 = Counter3.counter3;

  print(singleton1 == singleton2); 

  
}
