import 'package:flutter/foundation.dart';
import 'package:flowvahub/core/usecase/usecase.dart'; // Added
import 'package:flowvahub/features/auth/domain/entities/user_entity.dart';
import 'package:flowvahub/features/home/domain/usecases/get_user_details.dart';

class HomeProvider with ChangeNotifier {
  final GetUserDetails getUserDetailsUseCase;

  HomeProvider({required this.getUserDetailsUseCase});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _hasError = false;
  bool get hasError => _hasError;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  UserEntity? _userDetails;
  UserEntity? get userDetails => _userDetails;

  Future<void> fetchUserDetails() async { // No userId parameter
    _isLoading = true;
    _hasError = false;
    _errorMessage = null;
    notifyListeners();

    final result = await getUserDetailsUseCase(NoParams()); // Pass NoParams()

    result.fold(
      (failure) {
        _hasError = true;
        _errorMessage = failure.message;
        _userDetails = null;
      },
      (userEntity) {
        _userDetails = userEntity;
        _hasError = false;
        _errorMessage = null;
      },
    );

    _isLoading = false;
    notifyListeners();
  }
}
