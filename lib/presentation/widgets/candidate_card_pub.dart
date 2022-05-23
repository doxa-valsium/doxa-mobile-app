import 'dart:ui';
import 'package:flutter/material.dart';

class CandidateCardSegmentPublication extends StatefulWidget {
  final List? workExperiences;
  final String title;
  final String extraInfo;
  final String extrainfo2;

  const CandidateCardSegmentPublication({
    Key? key,
    required this.workExperiences,
    required this.title,
    this.extraInfo = '',
    this.extrainfo2 = '',
  }) : super(key: key);

  @override
  State<CandidateCardSegmentPublication> createState() => _CandidateCardSegmentPublication();
}

class _CandidateCardSegmentPublication extends State<CandidateCardSegmentPublication> {
  @override
  Widget build(BuildContext context) {
    int total;
    if (widget.workExperiences?.length == 1) {
      total = 1;
    } else {
      total = 2;
    }

    // int total = 2;
    bool showmoreClicked = false;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            Text(
              widget.extraInfo,
              style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ],
        ),
        const SizedBox(height: 9),
        // listview builder
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: total,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.workExperiences![index][0],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                ),
                Text(
                  widget.workExperiences![index][1],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.workExperiences![index][2],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primary),
                    ),
                    Text(
                      widget.workExperiences![index][3],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                    ),
                  ],
                )
              ],
            );
          },
        ),
        if (showmoreClicked == false && widget.workExperiences!.length > 1)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Text(
                    "Senior Graphic Designer",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                  )),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showmoreClicked = true;
                    total = widget.workExperiences?.length ?? 0;
                    print(showmoreClicked);
                  });
                },
                child: Text(
                  "See More",
                  style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              )
            ],
          ),
      ],
    );
  }
}
