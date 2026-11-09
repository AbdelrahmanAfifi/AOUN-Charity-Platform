# Firebase data model (draft)

The project brief does not define final Firestore field names or security rules. Confirm these with the team before implementation.

Suggested top-level collections for the MVP:

- `users`: account profile, role (`donor`, `charity`, or `admin`), and account status.
- `campaigns`: charity owner, title, description, category, requested items and quantities, image references, and campaign status.
- `donations`: donor, campaign, donated items and quantities, status, and timestamps.

Store uploaded images in Firebase Storage and keep their references in the related Firestore documents. Enforce role permissions with Firestore Security Rules; do not rely on client-side route checks for authorization.
