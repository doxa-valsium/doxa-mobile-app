import 'package:doxa_mobile_app/business_logic/blocs/company_screen/bloc/company_screen_bloc.dart';
import 'package:doxa_mobile_app/data/repositories/company_repository/company_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_details.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_profile_stack_handler.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/member_card.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar_and_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyProfileScreen extends StatelessWidget {
  static const String route = 'company-profile-screen';

  const CompanyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = CompanyScreenBloc(companyRepository: RepositoryProvider.of<CompanyRepository>(context), userRepository: RepositoryProvider.of<UserRepository>(context));
        bloc.add(FetchCompanyScreenData());
        return bloc;
      },
      child: BlocBuilder<CompanyScreenBloc, CompanyScreenState>(
        builder: (context, state) {
          if (state is CompanyScreenError) {
            return const Center(
              child: Text('Error'),
            );
          }
          if (state is CompanyScreenLoaded) {
            return Scaffold(
              extendBody: true,
              body: SafeArea(
                child: CustomAppBarAndBody(
                  title: 'My Company',
                  showBackButton: true,
                  body: SingleChildScrollView(
                    padding: const EdgeInsets.only(top: 4.0, left: 16.0, right: 16.0),
                    child: Column(
                      children: [
                        CompanyProfileStackHandler(
                          child: Column(
                            children: [
                              const SizedBox(height: 4.0),
                              CompanyDetails(
                                companyName: state.recruiterCompany.company.name,
                                companyIndustry: state.recruiterCompany.company.industry.label,
                                companyLocation: state.recruiterCompany.company.location.city.label,
                                companyAbout: state.recruiterCompany.company.bio,
                                companyWebsite: state.recruiterCompany.company.website,
                                companyContact: state.recruiterCompany.company.phone,
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
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class CompanyScreenFailed {}
