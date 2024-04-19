

bool isEmailValid(String email) {
  // Regular expression to match email pattern
  final RegExp emailRegex = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    caseSensitive: false,
    multiLine: false,
  );

  // Check if the email matches the regex pattern
  return emailRegex.hasMatch(email);
}