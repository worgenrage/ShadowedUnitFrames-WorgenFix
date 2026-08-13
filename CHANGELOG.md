# Shadowed Unit Frames - Worgen Fix Changelog

The core and options addons are versioned and released together.

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
