class MySingleton {
  int counter = 0;
  MySingleton._myConstructor();
  static MySingleton instance = MySingleton._myConstructor();
  void increase() {
    counter = counter + 1;
  }

  void decrease() {
    counter = counter - 1;
  }
}
