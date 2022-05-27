import 'dart:ui';

import 'package:flutter/material.dart';

class CandidateCardSegment extends StatefulWidget {
  final List? listItems;
  final String title;
  final String extraInfo;
  final int showAtFirst;

  const CandidateCardSegment({
    Key? key,
    required this.listItems,
    required this.title,
    this.extraInfo = '',
    required this.showAtFirst,
  }) : super(key: key);

  @override
  State<CandidateCardSegment> createState() => _CandidateCardSegmentState();
}

// How the segment variables show up
// Title                Extra Info
// listItems[0]         listItems[1]
// listItems[2]         listItems[3]

class _CandidateCardSegmentState extends State<CandidateCardSegment> {
  @override
  Widget build(BuildContext context) {
    int total;
    if (widget.listItems?.length == 1) {
      total = 1;
    } else {
      total = widget.showAtFirst;
    }
    // total = widget.listItems!.length;
    bool showmoreClicked = false;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            Text(
              widget.extraInfo,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ],
        ),
        const SizedBox(height: 12),
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
                      widget.listItems![index][0],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.listItems![index][1],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                    ),
                  ],
                ),
                Flexible(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      widget.listItems![index][2],
                      // maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(height: 6),
                    if (widget.listItems![0]?.length == 4)
                      Text(
                        widget.listItems![index][3],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: 10,
                        ),
                      ),
                  ]),
                ),
              ],
            );
          },
        ),
        if (showmoreClicked == false && widget.listItems!.length > 2)
          const SizedBox(
            height: 4,
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Text(
                  widget.listItems![widget.listItems!.length - 1][0],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                )),
            GestureDetector(
              onTap: () {
                setState(() {
                  showmoreClicked = true;
                  total = widget.listItems!.length;
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
