# Shadowed UF - Worgen Fix (Options)

ShadowedUF_Options-WorgenFix is the separate, load-on-demand configuration component shipped with ShadowedUnitFrames-WorgenFix. It is not a new options system or a standalone addon; it preserves the original SUF configuration interface for the minimally modified compatibility build.

The WorgenFix package primarily restores target-frame debuff icons affected by Blizzard's Classic Era 1.15.8 API changes. The supported clients are Classic Era / Hardcore 1.15.9 and Burning Crusade Anniversary 2.5.6.

## Project Information

- Original addon: **Shadowed Unit Frames**
- Original author: **Shadowed** (`Shadowed103` on CurseForge)
- Upstream maintainer: **Hendrik Leppkes** (`Nevcairiel`)
- WorgenFix modifications: **Christian Hamar**
- Upstream version used: **v4.3.9-classic**
- Target clients: **WoW Classic Era / Hardcore 1.15.9 and Burning Crusade Anniversary 2.5.6**

Official and upstream links:

- Original CurseForge project: <https://www.curseforge.com/wow/addons/shadowed-unit-frames>
- Original GitHub repository: <https://github.com/Shadowed/ShadowedUnitFrames>
- Maintained upstream repository: <https://github.com/Nevcairiel/ShadowedUnitFrames>
- Exact upstream release used by this fork: <https://github.com/Nevcairiel/ShadowedUnitFrames/tree/v4.3.9-classic>

## Installation

Install both addon folders directly under `World of Warcraft/_classic_era_/Interface/AddOns`:

- `ShadowedUnitFrames-WorgenFix`
- `ShadowedUF_Options-WorgenFix`

The core addon is required. Open the configuration using `/suf` or `/shadoweduf`.

Do not rename either addon directory. WoW uses the directory and TOC names to resolve the dependency between the options addon and the core addon.

## Disclaimer

This unofficial package is provided **as is** and is used at your own risk. No warranty or guarantee of stability, compatibility, data integrity, or continued maintenance is provided. The WorgenFix maintainer accepts no responsibility for addon errors, Lua errors, client crashes, lost or damaged settings, gameplay disruption, or other damage arising from its installation or use, to the extent permitted by applicable law.

Back up your WoW `WTF` directory and SavedVariables before installing or migrating settings.

## Migrating An Existing SUF Configuration

Profiles and layouts belong to the core addon; this options addon has no separate SavedVariables file. Follow the migration instructions in the core addon's [`README.MD`](../ShadowedUnitFrames-WorgenFix/README.MD#migrating-an-existing-suf-configuration) before starting WoW.

## Attribution And Licensing

Shadowed Unit Frames remains the work of its original creator, Shadowed, and its upstream contributors. WorgenFix builds directly on the v4.3.9-classic release maintained by Hendrik Leppkes (Nevcairiel); Christian Hamar maintains only the narrowly scoped Classic Era compatibility adjustments in this distribution.

See [LICENSE.MD](LICENSE.MD) and [THIRD_PARTY_LICENSES.MD](THIRD_PARTY_LICENSES.MD) before redistributing this package.

WorgenFix is an independent, unofficial compatibility build and is not affiliated with or endorsed by the original project or its maintainers. All rights in the original Shadowed Unit Frames code remain with their respective copyright holders. The official CurseForge project is currently marked **All Rights Reserved**.
