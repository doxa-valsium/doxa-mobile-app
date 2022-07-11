import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class MemberCard extends StatelessWidget {
  final CompanyMember companyMember;
  const MemberCard({
    required this.companyMember,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      height: 72.0,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: Styles.elevation2,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Avatar(
            radius: 20.0,
            avatarUrl: companyMember.avatarUrl,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    companyMember.name,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        companyMember.title.label,
                        style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      if (companyMember.isAdmin)
                        Container(
                          width: 48.0,
                          height: 16.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Center(
                            child: Text(
                              'Admin',
                              style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
