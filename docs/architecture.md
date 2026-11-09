# Mobile architecture

Each implemented feature uses three layers:

- **Data:** Firebase data sources, models, and repository implementations.
- **Domain:** entities, repository contracts, and use cases where they add value.
- **Presentation:** screens, widgets, Cubits, and states.

Cubit owns loading, success, empty, and error states. UI actions call Cubits; Cubits use domain contracts; repositories provide data through Firebase. Dependencies are passed through constructors. Home owns category browsing and search can stay in Campaigns; donation tracking stays in Donations.
