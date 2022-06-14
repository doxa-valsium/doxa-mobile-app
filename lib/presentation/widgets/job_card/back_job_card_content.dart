import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_banner.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_details.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/candidate_card_segments.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_chip.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class BackJobCardContent extends StatelessWidget {
  const BackJobCardContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const CompanyDetails(
          companyName: 'Company Name',
          companyIndustry: 'Industry',
          companyLocation: 'Location',
          companyAbout:
              'When you are building a new business from the ground up, you have little to go on but a lot to say. Consider your company bio or biography as an answer to the question, “what does your business do?” Don’t worry if it seems like a huge task; by the end of this ',
          companyWebsite: 'www.companyinfo.com',
          companyContact: '+92-3352366331',
        ),
        Positioned(
          // top: -15,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const CompanyBanner(),
              const Positioned(
                top: 90,
                child: const Align(
                  alignment: Alignment.center,
                  child: const Avatar(
                    avatarType: AvatarType.company,
                    radius: 52,
                    avatarUrl: 'https://picsum.photos/200',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
