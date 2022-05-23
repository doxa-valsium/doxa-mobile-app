import 'dart:ui';

import 'package:flutter/material.dart';

class CandidateCardSegment extends StatefulWidget {
  final List? workExperiences;
  final String title;
  final String extraInfo;
  final String extrainfo2;
  final int showAtFirst;

  const CandidateCardSegment({
    Key? key,
    required this.workExperiences,
    required this.title,
    this.extraInfo = '',
    this.extrainfo2 = '',
    required this.showAtFirst,
  }) : super(key: key);

  @override
  State<CandidateCardSegment> createState() => _CandidateCardSegmentState();
}

class _CandidateCardSegmentState extends State<CandidateCardSegment> {
  @override
  Widget build(BuildContext context) {
    int total;
    if (widget.workExperiences?.length == 1) {
      total = 1;
    } else {
      total = widget.showAtFirst;
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
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
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
                  ],
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    widget.workExperiences![index][2],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(height: 2),
                  if (widget.workExperiences![0]?.length == 4)
                    Text(
                      widget.workExperiences![index][3],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 10,
                      ),
                    ),
                ]),
              ],
            );
          },
        ),
        if (showmoreClicked == false && widget.workExperiences!.length > 2)
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
                    total = widget.workExperiences!.length;
                    print(showmoreClicked);
                    print(widget.workExperiences!.length);
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
