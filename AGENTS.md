# ShadowedUnitFrames-WorgenFix Agent Notes

## Project Versioning

- Addon name: `ShadowedUnitFrames-WorgenFix`.
- Companion options addon name: `ShadowedUF_Options-WorgenFix`.
- Current version: `v4.3.9-classic-worgenfix.1`.
- Version format: `v<upstream-version>-classic-worgenfix.<fork-release>`.
- Keep the version synchronized in both `.toc` files, addon UI, and both `CHANGELOG.md` files.
- Record every released version in `CHANGELOG.md`.

## Addon Structure

- Maintain the core fork and options fork as separate addons.
- `ShadowedUF_Options-WorgenFix` must remain load-on-demand and depend on `ShadowedUnitFrames-WorgenFix`.
- The core fork must load configuration through `C_AddOns.LoadAddOn("ShadowedUF_Options-WorgenFix")`.
- Preserve upstream internal names such as `ShadowUF`, module names, frame names, and other Lua identifiers unless a functional fix explicitly requires a change.

## Project Language

- User instructions may be provided in Hungarian, but all repository content must be written in English.
- Use English for addon UI text, chat output, slash command feedback, metadata, documentation, changelog entries, code comments, identifiers, and file names.
- Do not add Hungarian user-facing text or Hungarian documentation to the project.
- Existing and new localization files may contain translated user-facing values for their declared WoW locales; localization keys and code must remain in English.

## SavedVariables Isolation

- Use `ShadowedUFDBWorgenFix` as the fork's SavedVariables and AceDB database name.
- Do not read from, write to, or reuse the upstream `ShadowedUFDB` global.
- Keep the fork's SavedVariables fully isolated so the original Shadowed Unit Frames addon and this fork cannot overwrite each other's data.
- Do not implement automatic migration from the upstream database unless explicitly requested later.
- A future English-language note may document how users can manually migrate compatible settings from the original Shadowed Unit Frames database.

## Target Runtime

- Target client: WoW Classic Era / Hardcore 1.15.9.
- Supported client languages: `deDE`, `enUS`, `esES`, `esMX`, `frFR`, `koKR`, `ptBR`, `ruRU`, `zhCN`, and `zhTW`.
- TOC interface/API compatibility: `## Interface: 11509`.
- `Interface: 11509` is the WoW client/interface API compatibility number, not a Lua version.
- Lua target: Blizzard WoW addon sandbox, Lua 5.1 subset.
- Language Server flavor: `classic_era`.

## Lua Compatibility Rules

- Write only WoW Lua / Lua 5.1 compatible code.
- Do not use Lua 5.2, 5.3, or 5.4-only syntax or standard library features.
- Do not use:
  - `goto`
  - `_ENV`
  - `table.pack`
  - `table.unpack`
  - `__pairs`
  - `bit32`
  - normal Lua `require` / `package`
- Load order is controlled by the `.toc` file.
- Use ASCII-only identifiers, file/module names, slash command tokens, SavedVariables names, and constants.
- Use only WoW APIs available in Classic Era 1.15.9.

## WoW Lua LS

- Local executable:
  `C:\Users\hamar\AppData\Roaming\JetBrains\Rider2026.1\plugins\wowlua-ls\server\win32-x64\wowlua_ls.exe`
- If JetBrains updates move the plugin, search for `wowlua_ls.exe` under:
  `C:\Users\hamar\AppData\Roaming\JetBrains\`
- In Codex managed sandbox mode, AppData paths may be present but not readable/executable without an escalated shell command.
- Diagnostic command from project root:
  `& 'C:\Users\hamar\AppData\Roaming\JetBrains\Rider2026.1\plugins\wowlua-ls\server\win32-x64\wowlua_ls.exe' check .`
- Use the direct `check .` subcommand, not LSP stdio mode.
- After code changes, also run:
  `git diff --check`

## Local Tooling

- `rg.exe` is installed, but the current Codex PowerShell sandbox may not resolve it because the executable lives under AppData.
- Current Winget ripgrep executable:
  `C:\Users\hamar\AppData\Local\Microsoft\WinGet\Packages\BurntSushi.ripgrep.MSVC_Microsoft.Winget.Source_8wekyb3d8bbwe\ripgrep-15.1.0-x86_64-pc-windows-msvc\rg.exe`
- Current Codex-bundled ripgrep executable:
  `C:\Users\hamar\AppData\Local\JetBrains\Rider2026.1\acp-agents\.runtimes\node\24.13.0\npm-cache\_npx\6722ddab116cb282\node_modules\@openai\codex-win32-x64\vendor\x86_64-pc-windows-msvc\codex-path\rg.exe`
- If plain `rg` fails with "not recognized", first check sandbox access/PATH with `where.exe rg` and then use the full executable path with an escalated shell command when needed.
- For Markdown discovery, use a case-inclusive glob such as `-g '*.[mM][dD]'` because project files include uppercase `.MD`.
