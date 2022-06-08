import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/qualification.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/la.dart';

class QualificationCard extends StatelessWidget {
  final Qualification qualification;
  final VoidCallback onDelete;
  const QualificationCard({Key? key, required this.qualification, required this.onDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
        ),
        height: 56,
        decoration: Styles.containerStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Iconify(
                  Ic.baseline_home_work,
                  size: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "${qualification.degree} | ${qualification.major}",
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Container(
              height: 56,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.error,
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
              ),
              width: 56,
              child: IconButton(
                icon: Iconify(
                  La.trash_alt,
                  size: 20,
                  color: Theme.of(context).colorScheme.onError,
                ),
                onPressed: onDelete,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
