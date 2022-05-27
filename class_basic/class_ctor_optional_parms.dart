class BankAccountVerboseConstructor {
  final String holder;
  double balance;
  double limit;

  BankAccountVerboseConstructor(String holder,
      [double balance = 0, double? limit])
      : holder = holder,
        balance = balance,
        limit = limit ?? 0;

  String description() {
    return 'holder ${balance.toString()} ${limit.toString()}';
  }
}

void main() {
  BankAccountVerboseConstructor accountVerbose =
      BankAccountVerboseConstructor('JPS', 12000);

  print(accountVerbose.description()); // JPS 12000.0 0.0
}
