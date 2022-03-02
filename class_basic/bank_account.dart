class BankAccount {
  BankAccount({required this.holder, this.balance = 0});
  final String holder;
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

void main() {
  final bankAccount = BankAccount(holder: 'JPS');

  bankAccount.deposit(500);
  bankAccount.withdraw(200);
  bankAccount.withdraw(1000);

  print(bankAccount.balance);
}
