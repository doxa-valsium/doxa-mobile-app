import 'package:flutter/material.dart';

class CompanyDetails extends StatelessWidget {
  final String companyName;
  final String companyIndustry;
  final String companyLocation;
  final String companyAbout;
  final String companyWebsite;
  final String companyContact;

  const CompanyDetails({
    Key? key,
    required this.companyAbout,
    required this.companyContact,
    required this.companyIndustry,
    required this.companyLocation,
    required this.companyName,
    required this.companyWebsite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    companyName,
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    '$companyIndustry | $companyLocation',
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ABOUT',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    companyAbout,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'WEBSITE',
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      companyWebsite,
                      style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.primary),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'CONTACT',
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      companyContact,
                      style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.primary),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                'MEMBERS',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
