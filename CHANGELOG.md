# Shadowed Unit Frames - Worgen Fix Changelog

The core and options addons are versioned and released together.

## v4.3.9-classic-worgenfix.7 (2026-08-21)

### Shared

- Added Burning Crusade Anniversary 2.5.6 (`Interface: 20506`) compatibility metadata to both addon packages while retaining Classic Era / Hardcore 1.15.9 support.
- Synchronized the core and options addon versions for the WorgenFix 7 release.

## v4.3.9-classic-worgenfix.6 (2026-08-14)

### Shared

- Normalized modern Classic aura API data before rendering aura icons, indicators, debuff coloring, highlights, tags, and bundled Classic aura/cast helpers.
- Cleared reused aura buttons when aura groups are disabled or relaid out so stale icons cannot remain visible.
- Synchronized the core and options addon versions for the WorgenFix 6 release.

## v4.3.9-classic-worgenfix.5 (2026-08-14)

### Shared

- Documented that releases should ship as one ZIP containing both WorgenFix addon folders.
- Synchronized the core and options addon versions for the WorgenFix 5 release.

## v4.3.9-classic-worgenfix.4 (2026-08-13)

### Shared

- Added a prominent README warning that existing SUF settings are not imported automatically and require manual SavedVariables migration.
- Added a paste-ready CurseForge project description with installation, migration, attribution, disclaimer, and optional support information.
- Added an original WorgenFix project icon for CurseForge and repository use.
- Added an optional PayPal link for supporting the independent WorgenFix compatibility work.

## v4.3.9-classic-worgenfix.3 (2026-08-13)

### Shared

- Added documented manual migration steps for copying existing Shadowed Unit Frames profiles into the isolated WorgenFix SavedVariables database.
- Clarified that the core and options addons share the core SavedVariables data and must be installed together.
- Added backup, rollback, and original-addon conflict precautions to the migration guide.
- Moved fork attribution from the bottom of General to a dedicated Credits tab with project links and release information.
- Expanded the Credits tab with the original CurseForge project, original GitHub repository, maintained upstream repository, exact source release, and WorgenFix repository and release links.
- Reworked the Credits tab into readable sections explaining the original addon, the fork lineage, and the scope of the WorgenFix compatibility changes.
- Rewrote the README files to clarify that WorgenFix is a minimal SUF compatibility patch for target-frame debuffs affected by the Classic Era 1.15.8 API changes, and added an explicit as-is disclaimer.
- Refined the attribution wording to describe the upstream lineage and WorgenFix's independent, narrowly scoped maintenance role more naturally.

## v4.3.9-classic-worgenfix.2 (2026-08-13)

### Shared

- Added explicit original author, upstream maintainer, source, and fork modification attribution.
- Added detailed installation, project identity, upstream URL, and compatibility documentation.
- Added license status and third-party component documentation to both addon packages.

### Options

- Added explicit upstream and fork modification credits to the General options.

## v4.3.9-classic-worgenfix.1 (2026-08-13)

### Shared

- Created the initial fork from Shadowed Unit Frames v4.3.9-classic.
- Updated both addon identities and their dependency relationship.
- Updated metadata for WoW Classic Era and Hardcore 1.15.9.
- Retained all upstream localizations.

### Core

- Isolated SavedVariables as `ShadowedUFDBWorgenFix`.
- Removed the UTF-8 BOM from the bundled UTF8 data file.
- Added a shared debuff color compatibility helper for clients where `DebuffTypeColor` is unavailable.
- Added selectable automatic, modern, and legacy Classic UI API modes with safe capability fallbacks.
- Updated Blizzard cast bar and buff frame handling for the modern Classic UI.
- Made Blizzard frame suppression tolerate unavailable legacy frames.
- Replaced hardcoded addon asset paths with the runtime addon path.

### Options

- Added the client API mode selector to the General options.

## Upstream Base

### [v4.3.9-classic](https://github.com/Nevcairiel/ShadowedUnitFrames/tree/v4.3.9-classic) (2026-01-18)

- Update faction API for TBC Anniversary.
