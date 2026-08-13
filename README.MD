# Shadowed Unit Frames - Worgen Fix

ShadowedUnitFrames-WorgenFix is not a new unit-frame addon. It is an unofficial, minimally modified build of **Shadowed Unit Frames v4.3.9-classic** for WoW Classic Era and Hardcore.

Its primary purpose is to restore debuff icons below the target unit frame after Blizzard's Classic Era 1.15.8 API changes. The current target client is 1.15.9. It does not attempt to redesign SUF, add a new feature set, or change normal SUF profile and aura-filter behavior.

This repository contains two related addons that are developed, versioned, tested, and released together:

| Addon | Purpose | Directory |
| --- | --- | --- |
| Shadowed Unit Frames - Worgen Fix | Core unit frame addon | [`ShadowedUnitFrames-WorgenFix`](ShadowedUnitFrames-WorgenFix/) |
| Shadowed UF - Worgen Fix (Options) | Load-on-demand configuration addon | [`ShadowedUF_Options-WorgenFix`](ShadowedUF_Options-WorgenFix/) |

The options addon depends on the core addon. Both packages use the same release version and should be installed together.

## Project Information

- Original addon: **Shadowed Unit Frames**
- Original author: **Shadowed** (`Shadowed103` on CurseForge)
- Upstream maintainer: **Hendrik Leppkes** (`Nevcairiel`)
- WorgenFix modifications: **Christian Hamar**
- Upstream version used: **v4.3.9-classic**
- Current fork version: **v4.3.9-classic-worgenfix.3**
- Target client: **WoW Classic Era / Hardcore 1.15.9**

Official and upstream links:

- Original CurseForge project: <https://www.curseforge.com/wow/addons/shadowed-unit-frames>
- Original GitHub repository: <https://github.com/Shadowed/ShadowedUnitFrames>
- Maintained upstream repository: <https://github.com/Nevcairiel/ShadowedUnitFrames>
- Exact upstream release used by this fork: <https://github.com/Nevcairiel/ShadowedUnitFrames/tree/v4.3.9-classic>
- WorgenFix releases: <https://github.com/worgenrage/ShadowedUnitFrames-WorgenFix/releases>

## What This Fix Does

WoW Classic Era 1.15.8 changed Blizzard UI APIs and data used by Shadowed Unit Frames. With the unmodified v4.3.9-classic release, target-frame debuff rendering can stop with a Lua error, causing debuff icons to disappear even though the same debuffs remain visible on Blizzard nameplates.

WorgenFix adds narrow compatibility fallbacks so SUF can render those target debuffs again on the current Classic Era client. Supporting guards are included only where the same changed API assumptions could cause related loading or rendering errors.

The original SUF architecture, Lua identifiers, configuration, profiles, aura filters, and general behavior are intentionally left unchanged wherever possible. This package is a compatibility fix, not a separate successor to SUF.

## Disclaimer

This unofficial package is provided **as is**, without warranty or a guarantee of stability, compatibility, data integrity, or continued maintenance. Use it at your own risk. The WorgenFix maintainer accepts no responsibility for addon errors, Lua errors, client crashes, lost or damaged settings, gameplay disruption, or any other direct or indirect damage arising from its installation or use, to the extent permitted by applicable law.

Back up your WoW `WTF` directory and SavedVariables before installing or migrating settings. This disclaimer applies only to the WorgenFix distribution and does not speak for the original Shadowed Unit Frames authors or upstream maintainers.

## Installation

Download both ZIP files from the [latest release](https://github.com/worgenrage/ShadowedUnitFrames-WorgenFix/releases/latest) and extract them under:

```text
World of Warcraft/_classic_era_/Interface/AddOns/
```

The resulting structure must be:

```text
Interface/AddOns/ShadowedUnitFrames-WorgenFix/ShadowedUnitFrames-WorgenFix.toc
Interface/AddOns/ShadowedUF_Options-WorgenFix/ShadowedUF_Options-WorgenFix.toc
```

Do not rename either directory. Restart the WoW client completely after installing addons; `/reload` does not rescan newly added addon directories.

Open the configuration using `/suf` or `/shadoweduf`.

## SavedVariables

The fork uses `ShadowedUFDBWorgenFix` and does not automatically import, modify, or share the official addon's `ShadowedUFDB` database.

### Migrating An Existing SUF Configuration

Migration is optional and must be performed while the WoW client is completely closed. The options addon has no separate SavedVariables file; all profiles and layouts are stored by the core addon.

1. Exit the WoW client completely. A logout or `/reload` is not sufficient because WoW writes SavedVariables during shutdown.
2. Open the Classic Era account SavedVariables directory:

   ```text
   World of Warcraft/_classic_era_/WTF/Account/<ACCOUNT_NAME>/SavedVariables/
   ```

3. Make backup copies of the following files if they exist:

   ```text
   ShadowedUnitFrames.lua
   ShadowedUnitFrames-WorgenFix.lua
   ```

4. Copy `ShadowedUnitFrames.lua` to `ShadowedUnitFrames-WorgenFix.lua`. Replace the destination only after preserving its backup.
5. Open the copied `ShadowedUnitFrames-WorgenFix.lua` in a plain-text editor.
6. Change only the top-level SavedVariables assignment near the beginning of the file:

   ```lua
   ShadowedUFDB = {
   ```

   to:

   ```lua
   ShadowedUFDBWorgenFix = {
   ```

7. Leave the contents of the database table unchanged and save the file.
8. Start WoW with `ShadowedUnitFrames-WorgenFix` and `ShadowedUF_Options-WorgenFix` enabled. Keep the original `ShadowedUnitFrames` and `ShadowedUF_Options` addons disabled while using the fork.

The fork will now load a copy of the original profiles without modifying the original `ShadowedUnitFrames.lua` file. If the migrated configuration causes a problem, close WoW and restore or remove the copied `ShadowedUnitFrames-WorgenFix.lua` file.

## Repository Layout

- `ShadowedUnitFrames-WorgenFix/`: release-ready core addon.
- `ShadowedUF_Options-WorgenFix/`: release-ready options addon.
- `sources/`: unmodified upstream reference source used to produce and compare the fork.
- `release/`: locally generated ZIP packages; intentionally excluded from Git.

## Attribution And Licensing

Christian Hamar is credited only for the WorgenFix-specific compatibility modifications and does not claim authorship or ownership of the original Shadowed Unit Frames code.

The official CurseForge project is marked **All Rights Reserved**. Public redistribution of the complete fork requires permission from the applicable copyright holders. Source availability alone does not grant an open-source redistribution license.

See [LICENSE.MD](LICENSE.MD), [ATTRIBUTION.md](ATTRIBUTION.md), [THIRD_PARTY_LICENSES.MD](THIRD_PARTY_LICENSES.MD), and [CHANGELOG.md](CHANGELOG.md).
