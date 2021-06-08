part of 'auth_bloc.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

class AuthState extends Equatable {
  final auth.User? user;
  final AuthStatus status;

  const AuthState({required this.user,
    this.status = AuthStatus.unknown});

  @override
  bool get stringify => true;

  // factory AuthState.unknown() => AuthState();

  factory AuthState.authenticated({required auth.User user}) {
    return AuthState(user: user, status: AuthStatus.authenticated);
  }
  factory AuthState.unknown({auth.User? user}) {
    return AuthState(user: user, status: AuthStatus.unknown);
  }
  factory AuthState.unauthenticated({required auth.User user}) {
    return AuthState(user: user, status: AuthStatus.unauthenticated);
  }

  @override
  List<Object> get props => [user!, status];
}
