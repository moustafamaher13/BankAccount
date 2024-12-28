void main() {
  var user1 = BankAccount.withBalance("D200", 5000);
  var user2 = BankAccount("C100");

  user1.displayAccountID();
  user2.displayAccountID();
  user1.withdraw(1000);
  user2.deposit(10000);
  user1.withdraw(1000000);

}

class BankAccount {
  String account;
  double balance;

// Creating 2 constructors
  BankAccount.withBalance(String account, this.balance) : account = account;

  BankAccount(String account) : this.account = account, balance = 0;

  // Function for withdraw
  void withdraw(double withdrawAmount) {
    if (withdrawAmount >= 0 && withdrawAmount <= balance) {
      balance -= withdrawAmount;
      print("You have withdrawn \$$withdrawAmount and you Current Balance is $balance");
    } else {
      print("Your Balance is not enough");
    }
  }

  // Function for deposit
  void deposit(double depositAmount) {
    balance += depositAmount;
    print("You have Deposited ${depositAmount}. your Current Balance now is ${balance}");
  }
  // Function for displaying info
  void displayAccountID() {
    print("Account ID: $account");
    print("Current Balance: ${balance}");
  }
}