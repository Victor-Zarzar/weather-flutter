import 'dart:ui';

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
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(5, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CircleColor.primaryColor,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-5, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CircleColor.primaryColor,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.4),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: BoxDecoration(
                    color: CircleColor.secondaryColor,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: BoxDecoration(color: BackGround.secondaryColor),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '📍 Novo Hamburgo, RS',
                      style: TextStyle(
                        color: TextColor.primaryColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Good Morning',
                      style: TextStyle(
                        color: TextColor.primaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      'lib/assets/3.png',
                    ),
                    Center(
                      child: Text(
                        '21°C',
                        style: TextStyle(
                          color: TextColor.primaryColor,
                          fontSize: 55,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
