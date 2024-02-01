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
                    Center(
                      child: Text(
                        'THUNDERSTORM',
                        style: TextStyle(
                          color: TextColor.primaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Text(
                        'Friday 16 • 09.41am',
                        style: TextStyle(
                          color: TextColor.primaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'lib/assets/11.png',
                              scale: 8,
                            ),
                            const SizedBox(height: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunrise',
                                  style: TextStyle(
                                    color: TextColor.primaryColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  '5:34 am',
                                  style: TextStyle(
                                    color: TextColor.primaryColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'lib/assets/12.png',
                              scale: 8,
                            ),
                            const SizedBox(height: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunset',
                                  style: TextStyle(
                                    color: TextColor.primaryColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  '5:34 pm',
                                  style: TextStyle(
                                    color: TextColor.primaryColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Divider(
                            color: DividerLine.primaryColor,
                          ),
                        ),
                      ],
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
