import 'dart:math';

void main() {
  double oblig = 1000;
  int n = 5;
  double rOblig = 0.02;
  double rCurrent = 0.05;

  var rObligActualisationRate = pow(1 + rOblig, -n);
  num resNegPower_rOblig = oblig * rObligActualisationRate;
  var rObligComposit = pow(1 + rOblig, n);

  print('rObligComposit $rObligComposit');
  var rObligPercent = rOblig * 100;
  var obligFutureValue = oblig * rObligComposit;
  print(
      'oblig $oblig + interests (${rObligPercent}% during $n years) == future value ${obligFutureValue}. Future value ${obligFutureValue} * actualisation rate (${rObligPercent}% during $n years) ${rObligActualisationRate} == actualised value ${obligFutureValue * rObligActualisationRate}');

  var nCurrentActualisationRate = pow(1 + rCurrent, -n);
  var rCurrentPercent = rCurrent * 100;
  print(
      'oblig $oblig + interests (${rObligPercent}% during $n years) == future value ${obligFutureValue}. Future value ${obligFutureValue} * actualisation rate (${rCurrentPercent}% during $n years) ${nCurrentActualisationRate} == actualised value ${obligFutureValue * nCurrentActualisationRate}');

  print(
      'Diff $oblig - actualised value ${obligFutureValue * nCurrentActualisationRate} == ${oblig - (obligFutureValue * nCurrentActualisationRate)}');

  var rCurrentMinus_rObligCapitalisationRate = pow(1 + (rCurrent - rOblig), n);
  print(
      'actualised value ${obligFutureValue * nCurrentActualisationRate} at rate ${rCurrent - rOblig} during $n years ${obligFutureValue * nCurrentActualisationRate * rCurrentMinus_rObligCapitalisationRate}');
}
