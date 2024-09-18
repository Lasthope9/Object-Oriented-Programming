class BankAccount {
  String accountHolderName;
  String _accountNumber;
  double _balance;

  // Constructor
  BankAccount(this.accountHolderName, this._accountNumber, this._balance);

  // Getter for balance
  double get balance => _balance;

  // Setter for balance with validation
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print('Balance cannot be negative.');
    }
  }

  // Deposit method
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited \$${amount}. New balance: \$${_balance}.');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  // Withdraw method
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew \$${amount}. New balance: \$${_balance}.');
    } else {
      print('Insufficient funds or invalid amount.');
    }
  }
}

void main() {
  var account = BankAccount('Kulani Letsoalo', '123456789', 500.0);
  account.deposit(200.0);
  account.withdraw(100.0);
  print('Final balance: \$${account.balance}');
}
