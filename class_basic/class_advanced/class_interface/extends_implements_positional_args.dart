

class A {
  void m(int b) {}
}

class B {
  void m(int a) {}
}

class C extends A implements B {} // with positional args, this class def is ok

class CC extends B implements A {} // valid as well
