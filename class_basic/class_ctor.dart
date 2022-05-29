class BankAccountVerboseConstructor {
  final String holder;
  double balance;

  BankAccountVerboseConstructor({required String holder, double balance = 0})
      : holder = holder,
        balance = balance;

  String description() {
    return holder + ' ' + balance.toString();
  }
}

class BankAccountMostUsedConstructor {
  final String holder;
  double balance;

  BankAccountMostUsedConstructor({required this.holder, this.balance = 0});

  String description() {
    return holder + ' ' + balance.toString();
  }
}

class BankAccountMostUsedConstructorSubClass
    extends BankAccountMostUsedConstructor {
  final String secondHolder;

  BankAccountMostUsedConstructorSubClass(
      {required String super.holder,
      double super.balance = 0,
      required String this.secondHolder});

  String description() {
    return super.description() + ' ' + secondHolder;
  }
}

void main() {
  BankAccountVerboseConstructor accountVerbose =
      BankAccountVerboseConstructor(holder: 'JPS', balance: 12000);
  print(accountVerbose.description()); // JPS 12000.0

  BankAccountMostUsedConstructor account =
      BankAccountMostUsedConstructor(holder: 'JPS', balance: 500);
  print(account.description()); // JPS 500.0

  BankAccountMostUsedConstructorSubClass accountTwoHolders =BankAccountMostUsedConstructorSubClass(holder: 'JPS', secondHolder: 'Béa');
  print(accountTwoHolders.description()); // JPS 0.0 Béa 
}
