import 'package:doxa_mobile_app/business_logic/blocs/company_profile/bloc/company_profile_bloc.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_banner.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/services/image_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class CompanyProfileStackHandler extends StatelessWidget {
  final Company company;
  final bool isLogoUpdating;
  final Widget child;

  const CompanyProfileStackHandler({Key? key, required this.child, required this.company, required this.isLogoUpdating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = BlocProvider.of<CompanyProfileBloc>(context);
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 196, left: 20, right: 20, bottom: 16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondaryContainer,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                border: Border.all(color: Theme.of(context).colorScheme.secondaryContainer, width: 1),
              ),
              child: child,
            ),
            CompanyBanner(
              bannerImageUrl: company.coverImageUrl,
              updatingBannerImage: false,
              onEdit: () {},
            ),
            Positioned.fill(
              top: 88,
              child: Align(
                alignment: Alignment.topCenter,
                child: Avatar(
                  isUpdating: isLogoUpdating,
                  avatarType: AvatarType.company,
                  radius: 52,
                  avatarUrl: company.logoImageUrl,
                  onEdit: () async {
                    final logo = await ImageService.getImageFromGallery();
                    if (logo != null) {
                      _bloc.add(UpdateCompanyLogo(company: company, logo: logo));
                      return;
                    } else {
                      return;
                    }
                  },
                ),
              ),
            ),
            Positioned.fill(
              top: 10,
              right: -290,
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      border: Border.all(color: Theme.of(context).colorScheme.onSurface, width: 1),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Iconify(
                      MaterialSymbols.android_camera,
                      size: 30.0,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )),
            )
          ],
        ),
      ],
    );
  }
}
