import 'package:flutter/material.dart';
import 'package:mopro/pages/splash_interval.dart';
import 'package:provider/provider.dart';

// ignore: slash_for_doc_comments
/**
 * Nama   : sukma
 * 
 */

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Splashinterval(context),
      child: Consumer<Splashinterval>(
        builder: (_, splashProvider, __) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/fujifilm.png',
                        width: 250,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Made With ',
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text(' | ©2021'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
