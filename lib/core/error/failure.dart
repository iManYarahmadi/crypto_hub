abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 400:
        return ServerFailure(
          'Input Error. Check the request payload for issues.',
        );
      case 401:
        return ServerFailure('Unauthorized');
      case 403:
        return ServerFailure(
          'Access denied. Additional privileges are needed.',
        );
      case 404:
        return ServerFailure(
          'Not Found. The requested resource does not exist.',
        );
      case 429:
        return ServerFailure('Rate Limited. Too many requests.');
      case 500:
        return ServerFailure('Unexpected error');
      default:
        return ServerFailure('Unknown server error');
    }
  }
}
