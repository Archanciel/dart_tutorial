class Credentials {
  final String email;
  final String password;

  const Credentials({this.email = '', this.password = ''});

  Credentials copyWith({
    String? email,
    String? password,
  }) {
    return Credentials(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  String toString() => 'email $email, pw $password';
}

void main() {
  Credentials cr1 =
      Credentials(email: 'jp,schnyder@gmail.com', password: 'wrong pw');
  Credentials cr2 = cr1.copyWith(password: 'right pw'); // cr1 email will be
  //                                                       used as default value

  print(cr1);
  print(cr2);
}
