import 'bank_account_private.dart';

void main() {
  BankAccount bk = BankAccount('JPS', 12000);
  BankAccount.interestRatePercent = 7;

  print(bk.balance);

  bk.deposit(10000);
  bk.withDraw(5000);
  bk.withDraw(20000);

  print(bk.balance);
  print('daily yield: ${bk.yield(interestType.daily).toStringAsFixed(2)}');
  print('weekly yield: ${bk.yield(interestType.weekly).toStringAsFixed(2)}');
  print('monthly yield: ${bk.yield(interestType.monthly).toStringAsFixed(2)}');
  print('yearly yield: ${bk.yield(interestType.yearly).toStringAsFixed(2)}');
}
