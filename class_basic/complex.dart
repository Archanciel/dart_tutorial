class Complex {
  Complex(this.re, this.im);
  final double re;
  final double im;
}

class ComplexConst {
  const ComplexConst(this.re, this.im);
  final double re;
  final double im;
}

void main() {
  final complex = Complex(10.32, 1.56);
  const complexConst = ComplexConst(1.32, 0.56);

  final listOfConst = const [
    ComplexConst(3.33, 8.65),
    ComplexConst(0.33, 0.65)
  ];

// const constList = [Complex(3.33, 8.65), Complex(0.33, 0.65)];

  print('${complex.re} ${complex.im}');
  print('${complexConst.re} ${complexConst.im}');
  print(listOfConst);
// print(constList);

  final complexCont2 = ComplexConst(1, 0.5);

// complexCont2.re = 4; // re can't be used as a setter because it is final
}
