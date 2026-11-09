import 'package:flutter/material.dart';

abstract final class AppRoutes {
  static const home = '/';
  static const campaigns = '/campaigns';
  static const campaignDetails = '/campaign-details';
  static const donations = '/donations';
  static const donationDetails = '/donation-details';
  static const charityDashboard = '/charity';
  static const manageCampaigns = '/charity/campaigns';
  static const receivedDonations = '/charity/donations';

  // Feature owners connect their page widgets to these routes when ready.
  static Route<dynamic> onGenerateRoute(RouteSettings settings) =>
      MaterialPageRoute<void>(
        settings: settings,
        builder: (_) => const SizedBox.shrink(),
      );
}
