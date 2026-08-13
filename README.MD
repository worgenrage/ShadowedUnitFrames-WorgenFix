# Shadowed Unit Frames - Worgen Fix

ShadowedUnitFrames-WorgenFix is an unofficial, compatibility-focused fork of **Shadowed Unit Frames v4.3.9-classic** for WoW Classic Era and Hardcore 1.15.9.

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
- Current fork version: **v4.3.9-classic-worgenfix.2**
- Target client: **WoW Classic Era / Hardcore 1.15.9**

Official and upstream links:

- Original CurseForge project: <https://www.curseforge.com/wow/addons/shadowed-unit-frames>
- Original GitHub repository: <https://github.com/Shadowed/ShadowedUnitFrames>
- Maintained upstream repository: <https://github.com/Nevcairiel/ShadowedUnitFrames>
- Exact upstream release used by this fork: <https://github.com/Nevcairiel/ShadowedUnitFrames/tree/v4.3.9-classic>
- WorgenFix releases: <https://github.com/worgenrage/ShadowedUnitFrames-WorgenFix/releases>

## Why This Fork Exists

WoW Classic Era 1.15.9 changed parts of the Blizzard UI environment used by Shadowed Unit Frames. The upstream Classic release can fail while rendering auras when legacy debuff color data is unavailable, and other legacy Blizzard frame assumptions can also cause compatibility problems.

The fork keeps the original architecture, Lua identifiers, profile behavior, and localizations while adding narrowly scoped compatibility handling for the current Classic Era client.

## Main Changes

- Shared fallback for unavailable Blizzard debuff color data.
- Compatibility handling for modern Classic cast bar and buff frame APIs.
- Automatic, modern, and legacy Classic UI API modes.
- Nil-safe handling of unavailable legacy Blizzard frames.
- Dynamic addon asset paths.
- Separate `ShadowedUFDBWorgenFix` SavedVariables database.
- Explicit upstream attribution and third-party notices.

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

## Repository Layout

- `ShadowedUnitFrames-WorgenFix/`: release-ready core addon.
- `ShadowedUF_Options-WorgenFix/`: release-ready options addon.
- `sources/`: unmodified upstream reference source used to produce and compare the fork.
- `release/`: locally generated ZIP packages; intentionally excluded from Git.

## Attribution And Licensing

Christian Hamar is credited only for the WorgenFix-specific compatibility modifications and does not claim authorship or ownership of the original Shadowed Unit Frames code.

The official CurseForge project is marked **All Rights Reserved**. Public redistribution of the complete fork requires permission from the applicable copyright holders. Source availability alone does not grant an open-source redistribution license.

See [LICENSE.MD](LICENSE.MD), [ATTRIBUTION.md](ATTRIBUTION.md), [THIRD_PARTY_LICENSES.MD](THIRD_PARTY_LICENSES.MD), and [CHANGELOG.md](CHANGELOG.md).
