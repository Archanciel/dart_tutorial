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

  String get email => _email;
}

void main() {
  try {
    EmailAddress('jp.schny@gmail.com');
    EmailAddress('jp.schnygmail.com');
    EmailAddress('');
  } on FormatException catch (e) {
    print(e); // FormatException: email 'jp.schnygmail.com' does not contain '@'
    print('exception message: ${e.message}'); // exception message: email
//                              'jp.schnygmail.com' does not contain '@'
  } catch (e) {
    print(e.toString());
  } finally {
    print('program finished');
  }
}
