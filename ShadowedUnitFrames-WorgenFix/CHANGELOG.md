# Shadowed Unit Frames - Worgen Fix

## v4.3.9-classic-worgenfix.3 (2026-08-13)

- Added manual migration instructions for copying existing `ShadowedUFDB` profiles into `ShadowedUFDBWorgenFix`.
- Added backup, rollback, and original-addon conflict precautions to the migration guide.
- Added localization strings for the dedicated Credits tab.
- Added English UI text explaining the original project, fork lineage, and WorgenFix compatibility scope.

## v4.3.9-classic-worgenfix.2 (2026-08-13)

- Added explicit original author, upstream maintainer, source, and fork modification attribution.
- Added detailed installation, project identity, upstream URL, and compatibility information to the README.
- Added license status and third-party component documentation to the distribution.

## v4.3.9-classic-worgenfix.1 (2026-08-13)

- Created the initial fork from Shadowed Unit Frames v4.3.9-classic.
- Isolated the fork's SavedVariables database as `ShadowedUFDBWorgenFix`.
- Updated the addon metadata for WoW Classic Era and Hardcore 1.15.9.
- Retained all upstream localizations and updated the options addon references for the fork.
- Removed the UTF-8 BOM from the bundled UTF8 data file to fix Lua tooling compatibility.
- Added a shared debuff color compatibility helper for clients where `DebuffTypeColor` is unavailable.
- Added selectable automatic, modern, and legacy Classic UI API modes with safe capability fallbacks.
- Updated Blizzard cast bar and buff frame handling for the modern Classic UI.
- Made Blizzard frame suppression tolerate unavailable legacy frames.
- Replaced hardcoded addon asset paths with the runtime addon path.

## [v4.3.9-classic](https://github.com/Nevcairiel/ShadowedUnitFrames/tree/v4.3.9-classic) (2026-01-18)
[Full Changelog](https://github.com/Nevcairiel/ShadowedUnitFrames/compare/v4.3.8-classic...v4.3.9-classic) [Previous Releases](https://github.com/Nevcairiel/ShadowedUnitFrames/releases)

- Update faction API for TBC Anniversary  
