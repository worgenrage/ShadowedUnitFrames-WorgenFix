# Shadowed UF - Worgen Fix (Options)

ShadowedUF_Options-WorgenFix is the separate, load-on-demand configuration addon for the unofficial ShadowedUnitFrames-WorgenFix compatibility fork.

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

The core addon is required. Open the configuration using `/suf` or `/shadoweduf`.

Do not rename either addon directory. WoW uses the directory and TOC names to resolve the dependency between the options addon and the core addon.

## Migrating An Existing SUF Configuration

Profiles and layouts belong to the core addon; this options addon has no separate SavedVariables file. Follow the migration instructions in the core addon's [`README.MD`](../ShadowedUnitFrames-WorgenFix/README.MD#migrating-an-existing-suf-configuration) before starting WoW.

## Attribution And Licensing

Shadowed Unit Frames was originally created by Shadowed. This fork is based on v4.3.9-classic from the upstream project maintained by Hendrik Leppkes (Nevcairiel). Christian Hamar is credited only for the WorgenFix-specific compatibility modifications and does not claim authorship or ownership of the original Shadowed Unit Frames code.

See [LICENSE.MD](LICENSE.MD) and [THIRD_PARTY_LICENSES.MD](THIRD_PARTY_LICENSES.MD) before redistributing this package.

The official CurseForge project is currently marked **All Rights Reserved**. Public redistribution of this complete fork requires permission from the applicable copyright holders. Availability of the source code does not by itself grant an open-source redistribution license.
