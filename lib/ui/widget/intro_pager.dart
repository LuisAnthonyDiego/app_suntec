import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:page_indicator/page_indicator.dart';

const googleClientId =
    '500294587338-12ggnut1m43a2h9lhkespgf6kdtjtrng.apps.googleusercontent.com';
const facebookClientId = 'your-facebook-client-id';

class IntroPager extends StatelessWidget {
  final textprueba = 'Hola';
  const IntroPager({super.key});
  @override
  Widget build(BuildContext context) {
    return PageIndicatorContainer(
      align: IndicatorAlign.bottom,
      length: 4,
      indicatorSpace: 18,
      indicatorColor: Colors.red,
      indicatorSelectorColor: Colors.black,
      child: PageView(
        children: [
          const _DescripcionPage(
              text: 'textprueba', imagePath: 'assets/img/burger.png'),
          const _DescripcionPage(
              text: 'Second', imagePath: 'assets/img/burger.png'),
          const _DescripcionPage(
              text: 'Third', imagePath: 'assets/img/burger.png'),
          _LoginScreen()
        ],
      ),
    );
  }
}

class _DescripcionPage extends StatelessWidget {
  final String text;
  final String imagePath;

  const _DescripcionPage({
    required this.text,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 200,
            height: 200,
          ),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ))
        ],
      ),
    );
  }
}

class _LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SignInScreen(
      providerConfigs: [
        EmailProviderConfiguration(),
        GoogleProviderConfiguration(clientId: googleClientId),
        FacebookProviderConfiguration(clientId: facebookClientId),
      ],
    );
  }
}
