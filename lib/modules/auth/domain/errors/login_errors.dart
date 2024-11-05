
class AuthErrors {}

class NoAuthError extends AuthErrors {}

class InvalidLoginCredentialsError extends AuthErrors {}

class UnexpectedAuthError extends AuthErrors {}

class EmailAlreadyInUseError extends AuthErrors {}

class AuthNetworkRequestFailedError extends AuthErrors {}