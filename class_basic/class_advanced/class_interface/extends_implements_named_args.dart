abstract class A {
  void m({int a = 1}) {}
}

abstract class B {
  void m({int b = 1}) {}
}

class C extends A implements B {
  
}

class D extends A implements B {
  void m({int a = 1, int b = 1}) {}
}
