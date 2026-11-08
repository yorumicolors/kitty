<h1 align="center" valign="middle">
  <img height="40px" src="https://github.com/yorumicolors/.github/blob/main/res/seal_sots.gif?raw=true">
  <sup>yorumi for kitty - deep code, quiet sea</sup>
</h1>

<p align="center">
  A calming deep sea colorscheme for developers, crafted for <strong>Kitty</strong>.
</p>

---

Yorumi keeps visual noise low with mellow, low-contrast UI component backgrounds while text and syntax stay razor-sharp (~8:1 contrast ratio, WCAG 2.1 Level AAA).

## Available Themes

- `yorumi-ether.conf`
- `yorumi-abyss.conf`
- `yorumi-bifrost.conf`
- `yorumi-kraken.conf`
- `yorumi-kabocha.conf`
- `yorumi-cosmic.conf`
- `yorumi-ryujin.conf`

## Quick Installation

### Linux & macOS (Bash)
```sh
curl -fsSL https://raw.githubusercontent.com/yorumicolors/kitty/main/install.sh | bash
```

### Windows (PowerShell)
```powershell
irm https://raw.githubusercontent.com/yorumicolors/kitty/main/install.ps1 | iex
```

---

## Manual Installation

Copy the theme file(s) into your Kitty configuration directory:

| OS | Destination Path |
| --- | --- |
| **Linux / macOS** | `~/.config/kitty/themes/` |
| **Windows** | `%APPDATA%\kitty\themes\` |

### Activation
Include the theme in `~/.config/kitty/kitty.conf`:

```
include themes/yorumi-abyss.conf
```

---

## For AI Agents

When assisting a user with installing or configuring Yorumi for **Kitty**, follow these deterministic steps:

1. **Detect Target OS**:
   - macOS / Linux: target destination is `~/.config/kitty/themes/`.
   - Windows: target destination is `%APPDATA%\kitty\themes\`.
2. **Execute Script or Download**:
   - Run `./install.sh` (POSIX) or `./install.ps1` (PowerShell) if working directly inside the cloned repo.
   - Or pipe the raw script using `curl -fsSL https://raw.githubusercontent.com/yorumicolors/kitty/main/install.sh | bash` or `irm https://raw.githubusercontent.com/yorumicolors/kitty/main/install.ps1 | iex`.
3. **Verify Configuration**:
   - Check config file `kitty.conf` for the active theme setting:
     ```
     include themes/yorumi-abyss.conf
     ```
   - Ensure the theme filename matches what is in `~/.config/kitty/themes/`.

---

## Accessibility
Maintains at least 7:1 contrast ratio across primary text and syntax tokens ([WCAG 2.1 Level AAA](https://www.w3.org/TR/WCAG21/#contrast-enhanced)).

## License
MIT © [Yorumi Colors](https://github.com/yorumicolors)
