# Object-Oriented Programming (OOP) Principles

This project demonstrates the four core principles of Object-Oriented Programming (OOP): **Encapsulation**, **Inheritance**, **Polymorphism**, and **Abstraction** in Dart. Each concept is illustrated through clear examples in the code.

## 1. Encapsulation
Encapsulation refers to the bundling of data (attributes) and methods (functions) that operate on that data into a single unit or class. In addition, it restricts direct access to some of an object’s components, typically using private variables.

### Example:
In the `BankAccount` class:
- The sensitive data (`_accountNumber` and `_balance`) is hidden using private variables, and access is controlled through getter and setter methods.
- Methods like `deposit()` and `withdraw()` allow manipulation of the data in a controlled way.

```dart
class BankAccount {
  String accountHolderName;
  String _accountNumber; // Private variable
  double _balance; // Private variable

  BankAccount(this.accountHolderName, this._accountNumber, this._balance);

  double get balance => _balance;

  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print('Balance cannot be negative.');
    }
  }

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    }
  }
}
