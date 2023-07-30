class SignupWithEmailAndPassFailure {
  final String message;

  const SignupWithEmailAndPassFailure([this.message = "An unknown error occurred"]);

  factory SignupWithEmailAndPassFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignupWithEmailAndPassFailure('Please enter a strong password');
      case 'invalid-email':
        return const SignupWithEmailAndPassFailure('Email is not valid or badly formatted');
      case 'email-already-in-use':
        return const SignupWithEmailAndPassFailure('Already exists an account');
      case 'operation-not-allowed':
        return const SignupWithEmailAndPassFailure('Operation not allowed, please contact support');

      default:
        return SignupWithEmailAndPassFailure();
    }
  }
}
