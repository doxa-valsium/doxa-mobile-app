import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_details.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_profile_stack_handler.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/member_card.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:auto_route/auto_route.dart';

class CompanyProfileScreen extends StatelessWidget {
  static const String route = 'company-profile-screen';

  const CompanyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              floating: true,
              snap: true,
              elevation: 0.0,
              title: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  'My Company',
                  style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                ),
              ),
              backgroundColor: Theme.of(context).colorScheme.background,
              leading: Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 20.0),
                child: GestureDetector(
                  onTap: () {
                    context.router.pop();
                  },
                  child: Iconify(
                    Ic.sharp_keyboard_arrow_left,
                    size: 8.0,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
            ),
          ],
          body: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 4.0, left: 16.0, right: 16.0),
            child: Column(
              children: [
                CompanyProfileStackHandler(
                  child: Column(
                    children: [
                      const SizedBox(height: 4.0),
                      const CompanyDetails(
                        companyName: 'Company Name',
                        companyIndustry: 'Industry',
                        companyLocation: 'Location',
                        companyAbout:
                            'When you are building a new business from the ground up, you have little to go on but a lot to say. Consider your company bio or biography as an answer to the question, “what does your business do?” Don’t worry if it seems like a huge task; by the end of this ',
                        companyWebsite: 'www.companyinfo.com',
                        companyContact: '+92-3352366331',
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.only(bottom: 12.0),
                            child: MemberCard(
                              avatarUrl:
                                  'https://1.bp.blogspot.com/-W_7SWMP5Rag/YTuyV5XvtUI/AAAAAAAAuUQ/hm6bYcvlFgQqgv1uosog6K8y0dC9eglTQCLcBGAsYHQ/s880/Best-Profile-Pic-For-Boys%2B%25281%2529.jpg',
                              memberName: 'Ahmed Raza',
                              memberPosition: 'Creative Designer',
                              isAdmin: true,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
