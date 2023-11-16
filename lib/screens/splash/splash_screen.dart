import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_flutter/config/router/route_names.dart';
import 'package:go_router/go_router.dart';

import '../../config/font/font_size.dart';
import '../../config/size/widget_size.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // 처음 화면을 그리는 역할 -> ios의 viewdidload
    // 인터넷 상태 및 로그인 체크 가능
    super.initState();
    // Timer(Duration(milliseconds: 1500), () => context.goNamed(RouteNames.bottomBar));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/IMG_2494.JPG"),
              fit: BoxFit.fitWidth,
              opacity: 0.5,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: WidgetSize.ratioOfVertical(context, 0.2)),
            Expanded(
              flex: 8,
                child: Text(
                  '현민이의 스토리',
                  style: TextStyle(fontSize: FontSize.H1),
                )
            ),
            Expanded(
                flex: 2,
                child: Text(
                  '만든사람 : 현민이',
                  style: TextStyle(fontSize: FontSize.H2),
                )
            )
          ],
        ),
      ),
    );
  }
}
