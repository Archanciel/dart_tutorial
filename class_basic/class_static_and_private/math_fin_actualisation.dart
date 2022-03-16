import 'dart:math';

void main() {
  double oblig = 1000;
  int n = 5;
  double rOblig = 0.02;
  double rCurrent = 0.05;

  num resNegPower_rOblig = oblig * pow(1 + rOblig, -n);
  var rObligComposit = pow(1 + rOblig, n);

  print('rObligComposit $rObligComposit');
  print(
      'oblig $oblig + interests (${rOblig * 100}% during $n years) == future value ${oblig * rObligComposit}. Future value ${oblig * rObligComposit} * actualisation rate (${rOblig * 100}% during $n years) ${pow(1 + rOblig, -n)} == actualised value ${oblig * rObligComposit * pow(1 + rOblig, -n)}');

  print(
      'oblig $oblig + interests (${rOblig * 100}% during $n years) == future value ${oblig * rObligComposit}. Future value ${oblig * rObligComposit} * actualisation rate (${rCurrent * 100}% during $n years) ${pow(1 + rCurrent, -n)} == actualised value ${oblig * rObligComposit * pow(1 + rCurrent, -n)}');

  print(
      'Diff $oblig - actualised value ${oblig * rObligComposit * pow(1 + rCurrent, -n)} == ${oblig - (oblig * rObligComposit * pow(1 + rCurrent, -n))}');

  print(
      'actualised value ${oblig * rObligComposit * pow(1 + rCurrent, -n)} at rate ${rCurrent - rOblig} during $n years ${oblig * rObligComposit * pow(1 + rCurrent, -n) * pow(1 + (rCurrent - rOblig), n)}');
}
