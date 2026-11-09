sealed class Failure {
  const Failure(this.message);
  final String message;
}

final class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Network connection failed']);
}

final class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server request failed']);
}

final class AuthenticationFailure extends Failure {
  const AuthenticationFailure([super.message = 'Authentication failed']);
}

final class DatabaseFailure extends Failure {
  const DatabaseFailure([super.message = 'Database operation failed']);
}
