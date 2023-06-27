import 'package:bookreview/src/common/components/app_font.dart';
import 'package:bookreview/src/common/components/btn.dart';
import 'package:bookreview/src/init/cubit/init_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/splash_bg.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            right: 44.0,
            left: 44.0,
            bottom: MediaQuery.of(context).padding.bottom,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppFont(
                  "도서 리뷰 앱으로\n좋아하는 책을 찾아보세요",
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40.0),
                AppFont(
                  "책리뷰에서 솔직하고 통찰력 있는 리뷰를 받아보세요\n모든 장르의 책에 대한 리뷰를 확인할 수 있습니다\n(로맨스에서 공상과학까지)",
                  color: Color(0xff878787),
                  fontSize: 16.0,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.0),
                Btn(
                  onTap: () {
                    // 시작하기 터치 시,
                    context.read<InitCubit>().startApp();
                  },
                  btnText: "시작하기",
                ),
                SizedBox(height: 88.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
