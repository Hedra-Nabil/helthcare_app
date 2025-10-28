class Validators {
  //Validate Email Address
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) return 'Email is required';
    final email = value.trim();
    final regex = RegExp(r"^[\w\.\-]+@([\w\-]+\.)+[a-zA-Z]{2,}$");
    if (!regex.hasMatch(email)) return 'Please enter a valid email address';
    return null;
  }

  //Validate Username (letters, numbers, underscores)
  static String? validateUsername(String? value) {
    if (value == null || value.trim().isEmpty) return 'Username is required';
    final username = value.trim();
    if (username.length < 3) return 'Username must be at least 3 characters';
    if (username.length > 20) return 'Username is too long';
    final regex = RegExp(r'^[a-zA-Z0-9_]+$');
    if (!regex.hasMatch(username)) {
      return 'Only letters, numbers, and underscores are allowed';
    }
    return null;
  }

  // Simple Password Validator (only checks length)
  static String? validatePasswordSimple(String? value, {int minLength = 6}) {
    if (value == null || value.isEmpty) return 'Password is required';
    if (value.length < minLength) {
      return 'Password must be at least $minLength characters long';
    }
    return null;
  }

  // Checks for: uppercase, lowercase, number, special character, and min length
  static String? validatePasswordStrong(
    String? value, {
    int minLength = 8,
    bool requireUpper = true,
    bool requireLower = true,
    bool requireDigit = true,
    bool requireSpecial = true,
  }) {
    if (value == null || value.isEmpty) return 'Password is required';
    final pwd = value;
    if (pwd.length < minLength) {
      return 'Password must be at least $minLength characters long';
    }

    if (requireUpper && !RegExp(r'[A-Z]').hasMatch(pwd)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (requireLower && !RegExp(r'[a-z]').hasMatch(pwd)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (requireDigit && !RegExp(r'\d').hasMatch(pwd)) {
      return 'Password must contain at least one number';
    }
    if (requireSpecial &&
        !RegExp(
          r'[!@#\$%\^&\*\(\)_\+\-=\[\]\{\};:,.<>\/\?\\|`~]',
        ).hasMatch(pwd)) {
      return 'Password must contain at least one special character';
    }

    return null;
  }

  //Confirm Password (compare two fields)
  static String? validateConfirmPassword(String? value, String? original) {
    if (value == null || value.isEmpty) return 'Please confirm your password';
    if (original == null || original.isEmpty) {
      return 'Original password is empty';
    }
    if (value != original) return 'Passwords do not match';
    return null;
  }

  // Phone Validator (Egyptian format)
  static String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }
    final phone = value.trim();
    // Example: Egyptian mobile numbers (starts with 010, 011, 012, or 015)
    final regex = RegExp(r'^(01)(0|1|2|5)[0-9]{8}$');
    if (!regex.hasMatch(phone)) return 'Enter a valid Egyptian phone number';
    return null;
  }
}
