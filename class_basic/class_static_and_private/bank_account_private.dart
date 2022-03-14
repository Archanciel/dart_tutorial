import 'dart:math';

enum interestType { daily, weekly, monthly, yearly }

class BankAccount {
  static double _interestRate = 0;
  static double _dailyInterestRate = 0;

  static set interestRatePercent(double interestRate) {
    _interestRate = interestRate;
    _dailyInterestRate = pow(1 + _interestRate / 100, 1 / 365) as double;
  }

  final String holder;
  double _balance;

  BankAccount(this.holder, this._balance);

  double get balance => _balance;

  void deposit(double amount) => _balance += amount;

  bool withDraw(double amount) {
    double saldo = _balance - amount;

    if (saldo >= 0) {
      _balance = saldo;

      return true;
    }

    return false;
  }

  double yield(interestType itype) {
    double yieldAmount;

    switch (itype) {
      case interestType.daily:
        {
          yieldAmount = (_dailyInterestRate * _balance) - _balance;
          break;
        }

      case interestType.weekly:
        {
          yieldAmount = (pow(_dailyInterestRate, 7) * _balance) - _balance;
          break;
        }

      case interestType.monthly:
        {
          yieldAmount = (pow(_dailyInterestRate, 30) * _balance) - _balance;
          break;
        }

      case interestType.yearly:
        {
          yieldAmount = (pow(_dailyInterestRate, 365) * _balance) - _balance;
          break;
        }
    }

    return yieldAmount;
  }
}
