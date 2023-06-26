import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<LoadStatus> {
  SplashCubit() : super(LoadStatus.data_load);

  changeLoadStatus(LoadStatus status) {
    emit(status);
  }
}

enum LoadStatus {
  data_load("데이터 로드"),
  auth_check("로그인 체크");

  final String message;

  const LoadStatus(this.message);
}
