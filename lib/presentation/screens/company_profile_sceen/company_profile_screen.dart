import 'package:doxa_mobile_app/business_logic/blocs/company_profile/bloc/company_profile_bloc.dart';
import 'package:doxa_mobile_app/data/repositories/company_repository/company_repository.dart';
import 'package:doxa_mobile_app/data/repositories/storage_repository/storage_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_details.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_profile_stack_handler.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/member_card.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar_and_body.dart';
import 'package:doxa_mobile_app/services/snack_bar_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyProfileScreen extends StatelessWidget {
  static const String route = 'company-profile-screen';

  const CompanyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = CompanyProfileBloc(
          companyRepository: RepositoryProvider.of<CompanyRepository>(context),
          userRepository: RepositoryProvider.of<UserRepository>(context),
          storageRepository: RepositoryProvider.of<StorageRepository>(context),
        );
        bloc.add(FetchCompanyScreenData());
        return bloc;
      },
      child: Scaffold(
        extendBody: true,
        body: SafeArea(
          child: CustomAppBarAndBody(
            title: 'My Company',
            showBackButton: true,
            body: BlocConsumer<CompanyProfileBloc, CompanyScreenState>(
              buildWhen: (previous, current) {
                if (previous is CompanyScreenLoaded && current is! CompanyScreenLoaded) {
                  return false;
                }
                return true;
              },
              listenWhen: (previous, current) {
                if (previous is CompanyScreenLoaded && current is! CompanyScreenError) {
                  return false;
                }
                return true;
              },
              listener: (context, state) {
                if (state is CompanyScreenError) {
                  SnackBarService.showGenericErrorSnackBar(context, state.errorMessage);
                }
              },
              builder: (context, state) {
                if (state is CompanyScreenError) {
                  return const Center(
                    child: Text('Error'),
                  );
                } else if (state is CompanyScreenLoaded) {
                  return SingleChildScrollView(
                    padding: const EdgeInsets.only(top: 4.0, left: 16.0, right: 16.0),
                    child: Column(
                      children: [
                        CompanyProfileStackHandler(
                          isLogoUpdating: state.isCompanyLogoUpdating,
                          company: state.company,
                          child: Column(
                            children: [
                              const SizedBox(height: 4.0),
                              CompanyDetails(company: state.company),
                              const SizedBox(
                                height: 8.0,
                              ),
                              if (state.company.members.isNotEmpty)
                                ListView.builder(
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: state.company.members.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(bottom: 12.0),
                                      child: MemberCard(
                                        companyMember: state.company.members[index],
                                      ),
                                    );
                                  },
                                )
                              else
                                const Center(
                                  child: Text('No members'),
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ),
      ),
    );
  }
}

class CompanyScreenFailed {}
