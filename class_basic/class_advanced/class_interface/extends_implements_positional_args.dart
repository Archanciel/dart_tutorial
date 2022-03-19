abstract class A {
  void m(int b);
}

class B {
  void m(int a) {}
}

class C extends B implements A {}

class D extends A implements B {}

class E extends B implements A {
  void m(int a) {}
}
