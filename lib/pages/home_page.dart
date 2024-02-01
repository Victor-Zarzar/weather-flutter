import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_flutter/components/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackGround.primaryColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: BackGround.secondaryColor,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Padding(padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(3, -0.3),
              child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: CircleColor.primaryColor
              ),

              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}