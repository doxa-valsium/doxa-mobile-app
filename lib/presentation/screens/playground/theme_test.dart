import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class ThemeTest extends StatelessWidget {
  static String route = '/theme-test';
  const ThemeTest({Key? key}) : super(key: key);

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
                  child: Text('primary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('primaryVariant', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('secondary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('secondaryVariant', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondaryContainer),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('surface', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('background', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.background),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('error', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.error),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('onPrimary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onPrimary),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('onSecondary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onSecondary),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('onError', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onError),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('onSurface', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onSurface),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('onBackground', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onBackground),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('tertiary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.tertiary),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text('onTertiary', style: Theme.of(context).textTheme.headline5?.copyWith(color: const Color.fromARGB(255, 10, 10, 10))),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.onTertiary),
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
                  child: Text('elevation1', style: Theme.of(context).textTheme.headline4?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(boxShadow: const [elevation1], color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.only(left: 10, right: 60, top: 10, bottom: 10),
                  margin: const EdgeInsets.all(10),
                ),
                Container(
                  child: Text('elevation2', style: Theme.of(context).textTheme.headline4?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(boxShadow: const [elevation2], color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.only(left: 10, right: 60, top: 10, bottom: 10),
                  margin: const EdgeInsets.all(10),
                ),
                Container(
                  child: Text('elevation3', style: Theme.of(context).textTheme.headline4?.copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(boxShadow: const [elevation3], color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.only(left: 10, right: 60, top: 10, bottom: 10),
                  margin: const EdgeInsets.all(10),
                ),
              ],
            ),
          ),
        ));
  }
}
