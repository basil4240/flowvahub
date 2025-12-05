import 'package:equatable/equatable.dart';

class AppMetadataEntity extends Equatable {
  final String provider;
  final List<String> providers;

  const AppMetadataEntity({
    required this.provider,
    required this.providers,
  });

  @override
  List<Object?> get props => [provider, providers];
}
