abstract class User {
  final AccountType acc_type;

  User(this.acc_type);
}

enum AccountType {
  DOCTOR,
  REGULAR
}