class EmailAddress {
  final String _email;

  EmailAddress(String email) : _email = email {
    if (email.isEmpty) {
      throw FormatException('email \'$email\' can\'t be empty');
    } else {
      if (!email.contains('@')) {
        throw FormatException('email \'$email\' does not contain \'@\'');
      }
    }
  }
}

void main() {
  try {
    EmailAddress m1 = EmailAddress('jp.schny@gmail.com');
    EmailAddress m2 = EmailAddress('jp.schnygmail.com');
    EmailAddress m3 = EmailAddress('');
  } on FormatException catch (e) {
    print(e);
  } catch (e) {
    print(e.toString());
  } finally {
    print('program finished');
  }
}
