# Shadowed Unit Frames - Worgen Fix

ShadowedUnitFrames-WorgenFix is an unofficial, compatibility-focused fork of **Shadowed Unit Frames v4.3.9-classic** for WoW Classic Era and Hardcore 1.15.9.

This project is not the official Shadowed Unit Frames release and is not presented as a replacement for the upstream project. It exists to address Classic Era client compatibility problems while preserving the original addon's behavior and configuration model.

## Project Information

- Original addon: **Shadowed Unit Frames**
- Original author: **Shadowed** (`Shadowed103` on CurseForge)
- Upstream maintainer: **Hendrik Leppkes** (`Nevcairiel`)
- WorgenFix modifications: **Christian Hamar**
- Upstream version used: **v4.3.9-classic**
- Target client: **WoW Classic Era / Hardcore 1.15.9**

Official and upstream links:

- Original CurseForge project: <https://www.curseforge.com/wow/addons/shadowed-unit-frames>
- Original GitHub repository: <https://github.com/Shadowed/ShadowedUnitFrames>
- Maintained upstream repository: <https://github.com/Nevcairiel/ShadowedUnitFrames>
- Exact upstream release used by this fork: <https://github.com/Nevcairiel/ShadowedUnitFrames/tree/v4.3.9-classic>

## Installation

Install both addon folders directly under `World of Warcraft/_classic_era_/Interface/AddOns`:

- `ShadowedUnitFrames-WorgenFix`
- `ShadowedUF_Options-WorgenFix`

The options addon is a separate load-on-demand addon and depends on the core addon.

Do not rename either addon directory. WoW uses the directory and TOC names to resolve the dependency between the two addons.

## Changes

- Compatibility fallback for unavailable Blizzard debuff color data.
- Compatibility handling for modern Classic cast bar and buff frame APIs.
- Automatic, modern, and legacy Classic UI API modes.
- Dynamic addon asset paths.
- Separate `ShadowedUFDBWorgenFix` SavedVariables database.

Existing upstream Lua identifiers and configuration behavior are intentionally preserved where compatibility allows.

The fork uses the separate `ShadowedUFDBWorgenFix` SavedVariables database and does not automatically import or modify the official addon's `ShadowedUFDB` database.

## Migrating An Existing SUF Configuration

Migration is optional and must be performed while the WoW client is completely closed. The options addon has no separate SavedVariables file.

1. Exit the WoW client completely.
2. Open `World of Warcraft/_classic_era_/WTF/Account/<ACCOUNT_NAME>/SavedVariables/`.
3. Back up both `ShadowedUnitFrames.lua` and `ShadowedUnitFrames-WorgenFix.lua` if they exist.
4. Copy `ShadowedUnitFrames.lua` to `ShadowedUnitFrames-WorgenFix.lua`.
5. Open the copied file in a plain-text editor and change only the top-level assignment:

   ```lua
   ShadowedUFDB = {
   ```

   to:

   ```lua
   ShadowedUFDBWorgenFix = {
   ```

6. Leave the database table contents unchanged, save the file, and start WoW with both WorgenFix addons enabled.
7. Keep the original `ShadowedUnitFrames` and `ShadowedUF_Options` addons disabled while using the fork.

This copies the existing profiles without changing the original SavedVariables file. Restore or remove the copied file if the migrated configuration causes a problem.

## Attribution And Licensing

Shadowed Unit Frames was originally created by Shadowed. This fork is based on v4.3.9-classic from the upstream project maintained by Hendrik Leppkes (Nevcairiel). Christian Hamar is credited only for the WorgenFix-specific compatibility modifications and does not claim authorship or ownership of the original Shadowed Unit Frames code.

See [LICENSE.MD](LICENSE.MD), [ATTRIBUTION.md](ATTRIBUTION.md), and [THIRD_PARTY_LICENSES.MD](THIRD_PARTY_LICENSES.MD) before redistributing this package.

The official CurseForge project is currently marked **All Rights Reserved**. Public redistribution of this complete fork requires permission from the applicable copyright holders. Availability of the source code does not by itself grant an open-source redistribution license.
