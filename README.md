# AOUN Charity Platform

AOUN is a Flutter application for coordinating in-kind donations between donors and charities. The repository also contains a Firebase setup and a web administration scaffold.

## Project structure

- `mobile_app/` — Flutter application and feature folders.
- `web_admin/` — web administration entry point and shared assets.
- `firebase.json`, `firestore.rules`, `firestore.indexes.json`, and `storage.rules` — Firebase CLI configuration and security policies.

## Technologies

Flutter/Dart, Firebase Core, Firebase Authentication, Cloud Firestore, Firebase Storage, and Cubit (`flutter_bloc`).

## Run the mobile app

Install Flutter, open a terminal in `mobile_app/`, and run:

```sh
flutter pub get
flutter run
```

`mobile_app/lib/main.dart` initializes Firebase from `mobile_app/lib/firebase_options.dart` and starts the app defined in `mobile_app/lib/app.dart`. Android and iOS runner projects and Firebase native configuration are included for local builds.

## Team integration

The team leader owns startup, theme and route wiring, shared widgets, README, and project integration. The feature files are scaffolds for their assigned owners; their screens and behavior are not implemented here. Route builders remain placeholders until those pages are ready.

## Firebase security

Firestore and Storage rules deny client access until the team agrees on collection permissions. Review the rules before deployment or before connecting feature reads and writes.
