import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_dotted_border.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:doxa_mobile_app/presentation/widgets/job_box.dart';


class JobsPage extends StatelessWidget {
  static const String route = '/jobs';
  const JobsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jobs',
                style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onBackground),
              ),
              const SizedBox(height: 20),
              CustomDottedBorder(
                borderType: BorderType.RRect,
                child: Container(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 28, bottom: 22.82),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Iconify(
                        Mdi.plus_circle_outline,
                        size: 56,
                        color: Color(0xFF0061FE),
                      ),
                      const SizedBox(height: 9.8),
                      Text(
                        'Upload a Job',
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.primary),
                      ),
                    ]),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  JobBox(
                    isActive: true,
                    title: 'Software Engineer',
                    subtitle: 'Karachi, Pakistan  | Full-time',
                    matches: '5 Matches',
                  ),
                  SizedBox(width: 8),
                  JobBox(
                    isActive: false,
                    title: 'Software Engineer',
                    subtitle: 'Karachi, Pakistan  | Full-time',
                    matches: '5 Matches',
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  JobBox(
                    isActive: true,
                    title: 'Software Engineer',
                    subtitle: 'Karachi, Pakistan  | Full-time',
                    matches: '5 Matches',
                  ),
                  SizedBox(width: 8),
                  JobBox(
                    isActive: true,
                    title: 'Human Resource Manager',
                    subtitle: 'Karachi, Pakistan  | Full-time',
                    matches: '5 Matches',
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  JobBox(
                    isActive: true,
                    title: 'Software Engineer',
                    subtitle: 'Karachi, Pakistan  | Full-time',
                    matches: '5 Matches',
                  ),
                  SizedBox(width: 8),
                  JobBox(
                    isActive: false,
                    title: 'Human Resource Manager',
                    subtitle: 'Karachi, Pakistan  | Full-time',
                    matches: '5 Matches',
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  JobBox(
                    isActive: false,
                    title: 'Software Engineer',
                    subtitle: 'Karachi, Pakistan  | Full-time',
                    matches: '5 Matches',
                  ),
                  SizedBox(width: 8),
                  JobBox(
                    isActive: false,
                    title: 'Human Resource Manager',
                    subtitle: 'Karachi, Pakistan  | Full-time',
                    matches: '5 Matches',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
