void main() {
  const List<String> emailLst = const [
    'jp.schnyder@gmail.com',
    'jp.schnyder@other.com',
    'tamara.jagne@which.com',
    'tamara.jagne@gmail.com',
    'tamara.jagne@yahoo.com',
  ];

  const List<String> knownedSiteLst = const ['gmail.com', 'yahoo.com'];

  final List<String> unknown = emailLst.map((e) {
    var emailSite = e.split('@')[1];
    String knownSite = knownedSiteLst
        .firstWhere((element) => element == emailSite, orElse: () => '');
    if (knownSite == '') {
      return emailSite;
    } else {
      return '';
    }
  }).toList();

  unknown.removeWhere((element) => element == '');

  print(unknown);
}
