class BankAccountNamedArguments {
  BankAccountNamedArguments({required this.holder, this.balance = 0});
  final String holder; // immutable !
  double balance = 0;

  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      return true;
    } else {
      return false;
    }
  }
}

class BankAccountPositionalArguments {
  BankAccountPositionalArguments(this.holder, [this.balance = 0]);
  final String holder; // immutable !
  double balance = 0;
}

void main() {
  final bankAccountNamedArg = BankAccountNamedArguments(holder: 'JPS');

  bankAccountNamedArg.deposit(500);
  bankAccountNamedArg.withdraw(200);
  bankAccountNamedArg.withdraw(1000);

  print(bankAccountNamedArg.balance); // 300.0

  final bankAccountPositionalArgInitBal = BankAccountPositionalArguments('JPS', 500);
  final bankAccountPositionalArgNullBal = BankAccountPositionalArguments('JPS');

  print(bankAccountPositionalArgInitBal.balance); // 500.0
  print(bankAccountPositionalArgNullBal.balance); // 0.0
}
