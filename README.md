# AOUN

AOUN is a Flutter app for in-kind donations. It connects donors with charities that publish needs and campaigns, and lets donors follow a donation's status.

## MVP scope

- Donor and charity sign-in, with role-specific destinations.
- Browse campaigns and categories, with basic search and filtering.
- Create donations and view their status in the Donations area.
- Charities create campaigns and manage incoming donations.
- Firebase Authentication and Cloud Firestore; Firebase Storage when campaign or charity images are added.
- A simple admin website remains a separate project priority after the mobile app.

Reviews, payment processing, maps, advanced analytics, push notifications, and Cloud Functions are outside the first release.

## Mobile stack

- Flutter and Dart
- Firebase Authentication, Cloud Firestore, and optional Firebase Storage
- Cubit (`flutter_bloc`) for feature state
- Clean Architecture organized as Data, Domain, and Presentation
- Flutter Navigator for routing; dependencies are passed through constructors

## Project layout

`lib/features` contains Authentication, Home, Campaigns, Donations, and Charity. Categories live with Home; donation tracking lives with Donations. Profile is a simple account screen when implemented.

## Setup status

The current workspace contains the mobile scaffold and architecture folders. Add the platform folders and Firebase configuration for the target platform before using Firebase. Add actual image and font files before declaring them as assets in `pubspec.yaml`.
