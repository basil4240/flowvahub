import 'package:equatable/equatable.dart';

class IdentityDataEntity extends Equatable {
  final String email;
  final bool emailVerified;
  final bool phoneVerified;
  final String sub;

  const IdentityDataEntity({
    required this.email,
    required this.emailVerified,
    required this.phoneVerified,
    required this.sub,
  });

  @override
  List<Object?> get props => [email, emailVerified, phoneVerified, sub];
}
