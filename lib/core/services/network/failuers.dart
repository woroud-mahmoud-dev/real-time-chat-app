import 'package:equatable/equatable.dart';

abstract class FailureModel extends Equatable {}

class OfflineFailure extends FailureModel {
  @override
  List<Object?> get props => [];
}

class ServerFailure extends FailureModel {
  @override
  List<Object?> get props => [];
}

class EmptyCachFailure extends FailureModel {
  @override
  List<Object?> get props => [];
}

class WrongDataFailure extends FailureModel {
  @override
  List<Object?> get props => [];
}

class UnAuthraizedFailure  extends FailureModel {
  @override
  List<Object?> get props => [];
}
