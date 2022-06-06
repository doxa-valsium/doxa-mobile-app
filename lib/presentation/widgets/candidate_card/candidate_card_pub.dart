import 'dart:ui';
import 'package:flutter/material.dart';

class CandidateCardSegmentPublication extends StatefulWidget {
  final List? listItems;
  final String title;
  final String extraInfo;
  final String extrainfo2;

  const CandidateCardSegmentPublication({
    Key? key,
    required this.listItems,
    required this.title,
    this.extraInfo = '',
    this.extrainfo2 = '',
  }) : super(key: key);

  @override
  State<CandidateCardSegmentPublication> createState() => _CandidateCardSegmentPublication();
}

// How the publication variables show up
// Title
// listItems[0]
// listItems[1]
// listItems[2]      listItems[3]

class _CandidateCardSegmentPublication extends State<CandidateCardSegmentPublication> {
  @override
  Widget build(BuildContext context) {
    int total;
    if (widget.listItems?.length == 1) {
      total = 1;
    } else {
      total = 2;
    }

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
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: total,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.listItems![index][0],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                ),
                Text(
                  widget.listItems![index][1],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.listItems![index][2],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primary),
                    ),
                    Text(
                      widget.listItems![index][3],
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
        if (showmoreClicked == false && widget.listItems!.length > 1)
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
                    total = widget.listItems?.length ?? 0;
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
