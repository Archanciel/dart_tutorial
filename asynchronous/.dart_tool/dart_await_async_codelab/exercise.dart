
// https://dart.dev/codelabs/async-await#exercise-practice-handling-errors

// Part 1
// You can call the provided async function fetchRole()

// Part 2
// Implement reportLogins here
// You can call the provided async function fetchLoginAmount()
// to return the number of times that the user has logged in.
Future<String> reportLogins() async {
  return 'Total number of logins: ${await fetchLoginAmount()}';
}

// Implement changeUsername here
Future<String> changeUsername() async {
  try {
    return await fetchNewUsername();
  } catch (e) {
    return e.toString();
  }
}

// Part 1
String addHello(String user) {
  return 'Hello $user';
}

// Part 2
// You can call the provided async function fetchUsername()
// to return the username.
Future<String> greetUser() async {
  String userName = await fetchUsername();

  return addHello(userName);
}

// Part 3
// You can call the provided async function logoutUser()
// to log out the user.
Future<String> sayGoodbye() async {
  try {
    return '${await logoutUser()} Thanks, see you next time';
  } catch () {
    return 'Good bye Unknown';
  }
Future<String> reportUserRole() async {
}
// to return the user role.
  return 'User role: ${await fetchRole()}';
}