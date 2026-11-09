<h1 align="center" valign="middle">
  <img height="40px" src="https://github.com/yorumicolors/.github/blob/main/res/seal_sots.gif?raw=true">
  <sup>yorumi for kitty - deep code, quiet sea</sup>
</h1>

<p align="center">
  A calming deep sea colorscheme for developers, crafted for <strong>Kitty</strong>.
</p>

---

Yorumi keeps visual noise low with mellow, low-contrast UI component backgrounds while text and syntax stay sharp: body text measures 9.6-19.5:1 against its background (WCAG AAA), and the lowest-contrast syntax token is 5.6:1 (WCAG AA).

## Available Themes

- `yorumi-ether.conf`
- `yorumi-abyss.conf`
- `yorumi-bifrost.conf`
- `yorumi-kraken.conf`
- `yorumi-kabocha.conf`
- `yorumi-cosmic.conf`
- `yorumi-ryujin.conf`

## Install

Linux / macOS:

```sh
curl -fsSL https://raw.githubusercontent.com/yorumicolors/kitty/main/install.sh | bash
```

Without `--flavour` it asks; to skip the question:

```sh
curl -fsSL https://raw.githubusercontent.com/yorumicolors/kitty/main/install.sh | bash -s -- --flavour kraken
```

Seven fragments land in `${XDG_CONFIG_HOME:-$HOME/.config}/kitty/themes/`; the `>>> yorumi >>>` block
in `kitty.conf` holds an absolute `include` of the chosen fragment, so it still resolves when
`--config` points at a config file somewhere else:

```
# >>> yorumi >>>
include /home/you/.config/kitty/themes/yorumi-abyss.conf
# <<< yorumi <<<
```

Both overrides are honoured:

| setting | what it moves |
|---|---|
| `KITTY_CONFIG_DIRECTORY` | everything: `kitty.conf` and the `themes/` directory move with it |
| `--config <path>` | only the config file the block is written into, and it wins over the directory-derived default; the fragments stay put |

Kitty's own `KITTY_CONFIG_DIRECTORY` is used as-is, so an absolute path is what you want; with it
unset the directory is `${XDG_CONFIG_HOME:-$HOME/.config}/kitty/`. `--no-activate` writes the
fragments and leaves every config alone.

kitty has no native Windows build; on Windows, run it inside WSL.

## Changing flavour

```sh
curl -fsSL https://raw.githubusercontent.com/yorumicolors/kitty/main/install.sh | bash -s -- --flavour bifrost
```

Drop `--flavour` to pick from the list again.

## Manual

Copy the theme file(s) into your Kitty configuration directory:

| OS | Destination Path |
| --- | --- |
| **Linux / macOS** | `${KITTY_CONFIG_DIRECTORY:-${XDG_CONFIG_HOME:-$HOME/.config}/kitty}/themes/` |

### By hand
Include the theme in `kitty.conf` (beside `themes/`, under `KITTY_CONFIG_DIRECTORY` when you set
it):

```
include ~/.config/kitty/themes/yorumi-abyss.conf
```

---

## For AI Agents

When assisting a user with installing or configuring Yorumi for **Kitty**, follow these deterministic steps:

1. **Detect Target OS**:
   - macOS / Linux: target destination is `${KITTY_CONFIG_DIRECTORY:-${XDG_CONFIG_HOME:-$HOME/.config}/kitty}/themes/`.
   - Windows: kitty has no native build. Use the macOS/Linux path inside WSL; do not install to an `%APPDATA%` path.
2. **Install**: the command under `## Install`; add `-s -- --flavour <name>` to skip the question.
3. **Verify Configuration**:
   - Check config file `kitty.conf` (under `$KITTY_CONFIG_DIRECTORY` when set) for the active theme setting:
     ```
     include ~/.config/kitty/themes/yorumi-abyss.conf
     ```
   - Ensure the theme filename matches what is in the `themes/` directory beside that config.

---

## Accessibility
Body text measures 9.6-19.5:1 against the background (WCAG 2.1 AAA); every palette token clears 5.6:1 (AA). No blanket AAA claim is made for syntax colours - sRGB runs out before the saturated hues get lighter.

## License
MIT © [Yorumi Colors](https://github.com/yorumicolors)
