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
                                  'Company Name',
                                  style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  'Industry | Location',
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
                                  'When you are building a new business from the ground up, you have little to go on but a lot to say. Consider your company bio or biography as an answer to the question, “what does your business do?” Don’t worry if it seems like a huge task; by the end of this ',
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
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'WEBSITE',
                                  style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 28.0),
                                  child: Text(
                                    'CONTACT',
                                    style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                                    softWrap: false,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'www.companyinfo.com',
                                  style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.primary),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  '+92-3352366331',
                                  style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.primary),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
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
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const MemberCard(
                        avatarUrl:
                            'https://1.bp.blogspot.com/-W_7SWMP5Rag/YTuyV5XvtUI/AAAAAAAAuUQ/hm6bYcvlFgQqgv1uosog6K8y0dC9eglTQCLcBGAsYHQ/s880/Best-Profile-Pic-For-Boys%2B%25281%2529.jpg',
                        memberName: 'Ahemd Raza',
                        memberPosition: 'Creative Designer',
                        isAdmin: true,
                      ),
                      const SizedBox(height: 12.0),
                      const MemberCard(
                        avatarUrl:
                            'https://1.bp.blogspot.com/-W_7SWMP5Rag/YTuyV5XvtUI/AAAAAAAAuUQ/hm6bYcvlFgQqgv1uosog6K8y0dC9eglTQCLcBGAsYHQ/s880/Best-Profile-Pic-For-Boys%2B%25281%2529.jpg',
                        memberName: 'Ahemd Raza',
                        memberPosition: 'Creative Designer',
                        isAdmin: false,
                      ),
                      const SizedBox(height: 12.0),
                      const MemberCard(
                        avatarUrl:
                            'https://1.bp.blogspot.com/-W_7SWMP5Rag/YTuyV5XvtUI/AAAAAAAAuUQ/hm6bYcvlFgQqgv1uosog6K8y0dC9eglTQCLcBGAsYHQ/s880/Best-Profile-Pic-For-Boys%2B%25281%2529.jpg',
                        memberName: 'Ahemd Raza',
                        memberPosition: 'Creative Designer',
                        isAdmin: false,
                      ),
                      const SizedBox(height: 12.0),
                      const MemberCard(
                        avatarUrl:
                            'https://1.bp.blogspot.com/-W_7SWMP5Rag/YTuyV5XvtUI/AAAAAAAAuUQ/hm6bYcvlFgQqgv1uosog6K8y0dC9eglTQCLcBGAsYHQ/s880/Best-Profile-Pic-For-Boys%2B%25281%2529.jpg',
                        memberName: 'Ahemd Raza',
                        memberPosition: 'Creative Designer',
                        isAdmin: false,
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
