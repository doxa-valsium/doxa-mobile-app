import 'package:flutter/material.dart';
import 'package:doxa_mobile_app/styles.dart';

class JobBox extends StatelessWidget {
  final bool isActive;
  final String title;
  final String subtitle;
  final String matches;
  const JobBox({
    Key? key,
    required this.isActive,
    required this.title,
    required this.subtitle,
    required this.matches,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: isActive
                      ? Container(
                          height: 16,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(19)),
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                          child: Text(
                            'Active',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onTertiary),
                          ),
                        )
                      : Container(
                          height: 16,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(19)),
                            color: Theme.of(context).colorScheme.surface,
                          ),
                          child: Text(
                            'Inactive',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                          ),
                        ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                  ),
                ),
                const SizedBox(height: 3),
                Align(alignment: Alignment.topLeft, child: Text(subtitle, style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSurface))),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 15,
                width: 62,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(19)),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Text(
                  matches,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                ),
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(boxShadow: Styles.elevation3, color: Colors.white, borderRadius: BorderRadius.circular(8)),
      height: 132,
    ));
  }
}
