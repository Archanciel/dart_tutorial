abstract class A {
  void m({int b});
}

class B {
  void m({int a = 1}) {}
}
/*
class C extends B implements A {}

class D extends A implements B {
  void m({int a = 1, int b = 2}) {}
}

class DD extends A implements B {
  void m({int a = 1}) {}
}

class DDD extends A implements B {
  void m({int b = 2}) {}
}

class E extends B implements A {
  void m({int a = 1, int b = 2}) {}
}
*/
/*
class EE extends B implements A {
  void m({int a = 1}) {}
}

class EEE extends B implements A {
  void m({int b = 2}) {}
}
*/
