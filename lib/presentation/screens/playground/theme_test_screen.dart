import 'package:doxa_mobile_app/presentation/widgets/custom_dotted_border.dart';
import 'package:doxa_mobile_app/presentation/widgets/pulsating_button.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ep.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';

class ThemeTestScreen extends StatelessWidget {
  static const String route = 'theme-test';
  const ThemeTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Playground'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Text Themes',
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'headline1',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'headline2',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  'headline3',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  'headline4',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'headline5',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  'headline6',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'subtitle1',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  'subtitle2',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  'bodyText1',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  'bodyText2',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  'button',
                  style: Theme.of(context).textTheme.button,
                ),
                Text(
                  'caption',
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  'overline',
                  style: Theme.of(context).textTheme.overline,
                ),
                // test all the theme colors
                // add heading
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Color Themes',
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
                  child: Text('primary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer),
                  child: Text('primaryVariant', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary),
                  child: Text('secondary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondaryContainer),
                  child: Text('secondaryVariant', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
                  child: Text('surface', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.background),
                  child: Text('background', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.error),
                  child: Text('error', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onPrimary),
                  child: Text('onPrimary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onSecondary),
                  child: Text('onSecondary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onError),
                  child: Text('onError', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onSurface),
                  child: Text('onSurface', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onBackground),
                  child: Text('onBackground', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.tertiary),
                  child: Text('tertiary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onTertiary),
                  child: Text('onTertiary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 10, 10, 10))),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    'Elevations',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                // test all the boxshadows
                Container(
                  decoration: BoxDecoration(boxShadow: Styles.elevation1, color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.only(left: 10, right: 60, top: 10, bottom: 10),
                  margin: const EdgeInsets.all(10),
                  child: Text('elevation1', style: Theme.of(context).textTheme.headline4?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: Styles.elevation2, color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.only(left: 10, right: 60, top: 10, bottom: 10),
                  margin: const EdgeInsets.all(10),
                  child: Text('elevation2', style: Theme.of(context).textTheme.headline4?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: Styles.elevation3, color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.only(left: 10, right: 60, top: 10, bottom: 10),
                  margin: const EdgeInsets.all(10),
                  child: Text('elevation3', style: Theme.of(context).textTheme.headline4?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
                Center(
                  child: Text(
                    'Icons',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      const Iconify(Teenyicons.home_alt_outline),
                      Iconify(
                        Ep.suitcase,
                        color: Theme.of(context).colorScheme.primary,
                        size: 30,
                      ),
                      const Iconify(Bi.chat_dots) // widget
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Border',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomDottedBorder(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Theme.of(context).colorScheme.secondary,
                      child: Center(
                        child: Text(
                          'Border',
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Elevated Button',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 50.0,
                    child: ElevatedButton(
                      child: Text(
                        'BUTTON',
                        style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Outlined Buttons',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 50.0,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'BUTTON',
                        style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Pulsating Buttons',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PulsatingButton(
                        primaryColor: Theme.of(context).colorScheme.primary,
                        secondaryColor: Theme.of(context).colorScheme.secondary,
                      ),
                      Column(
                        children: [
                          const PulsatingButton(
                            primaryColor: Colors.yellow,
                            secondaryColor: Colors.red,
                            glowColor: Colors.green,
                            discRadius: 45,
                            animationRadius: 50,
                          ),
                          PulsatingButton(
                            primaryColor: Colors.grey.shade300,
                            secondaryColor: Colors.grey.shade600,
                            discRadius: 45,
                            animationRadius: 50,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
