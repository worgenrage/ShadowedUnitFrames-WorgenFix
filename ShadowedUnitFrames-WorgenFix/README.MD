# Shadowed Unit Frames - Worgen Fix

ShadowedUnitFrames-WorgenFix is not a new unit-frame addon. It is an unofficial, minimally modified build of **Shadowed Unit Frames v4.3.9-classic** for WoW Classic Era and Hardcore.

Its primary purpose is to restore debuff icons below the target unit frame after Blizzard's Classic Era 1.15.8 API changes. The current target client is 1.15.9. This project is not an official Shadowed Unit Frames release or a replacement for the upstream project.

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

## What This Fix Does

The unmodified v4.3.9-classic release can stop during target-debuff rendering when Blizzard data expected by the old API is unavailable. WorgenFix adds narrow compatibility fallbacks so those target-frame debuff icons render again. Supporting guards cover the same changed API assumptions where they could cause related errors.

No new unit-frame system or feature set is introduced. Existing upstream Lua identifiers, profiles, configuration, aura filters, and normal SUF behavior are intentionally preserved wherever possible. A separate `ShadowedUFDBWorgenFix` SavedVariables database prevents this package from writing directly to the original addon's database.

## Disclaimer

This unofficial package is provided **as is**, without warranty or a guarantee of stability, compatibility, data integrity, or continued maintenance. Use it at your own risk. The WorgenFix maintainer accepts no responsibility for addon errors, Lua errors, client crashes, lost or damaged settings, gameplay disruption, or any other direct or indirect damage arising from its installation or use, to the extent permitted by applicable law.

Back up your WoW `WTF` directory and SavedVariables before installing or migrating settings. This disclaimer applies only to the WorgenFix distribution and does not speak for the original Shadowed Unit Frames authors or upstream maintainers.

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
