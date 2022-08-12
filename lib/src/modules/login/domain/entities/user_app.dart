class UserApp {
  final String username;
  final String password;
  final bool admin;

  UserApp({
    required this.username,
    required this.password,
    this.admin = false,
  });

  @override
  String toString() =>
      'UserApp(username: $username, password: $password, admin: $admin)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserApp &&
        other.username == username &&
        other.password == password &&
        other.admin == admin;
  }

  @override
  int get hashCode => username.hashCode ^ password.hashCode ^ admin.hashCode;
}
