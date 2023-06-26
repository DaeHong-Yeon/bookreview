import 'package:bookreview/src/common/components/app_font.dart';
import 'package:bookreview/src/common/cubit/app_data_load_cubit.dart';
import 'package:bookreview/src/common/enum/common_state_status.dart';
import 'package:bookreview/src/splash/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppDataLoadCubit, AppDataLoadState>(
      listenWhen: (previous, current) =>
          current.status == CommonStateStatus.loaded,
      listener: (context, state) {
        context.read<SplashCubit>().changeLoadStatus(LoadStatus.auth_check);
      },
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/splash_bg.png",
              fit: BoxFit.cover,
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: MediaQuery.of(context).padding.bottom,
              child: Column(
                children: [
                  AppFont(
                    "도서 리뷰 앱으로\n좋아하는 책을 찾아보세요",
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40.0),
                  BlocBuilder<SplashCubit, LoadStatus>(
                      builder: (context, status) {
                    return AppFont(
                      "${status.message} 중...",
                      color: Color(0xff878787),
                      fontSize: 16.0,
                      textAlign: TextAlign.center,
                    );
                  }),
                  SizedBox(height: 24.0),
                  CircularProgressIndicator(
                    strokeWidth: 1.0,
                    color: Colors.white,
                  ),
                  SizedBox(height: 88.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
