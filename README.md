# Yorumi Themes for Kitty

| ![image](https://github.com/user-attachments/assets/1f8d0b18-9a0c-4c28-a4ae-eca1580dc49a) | ![image](https://github.com/user-attachments/assets/c0cd39d4-aebd-4f37-a97f-40abc0b37d9c) |
| --- | --- |
| yorumi abyss | yorumi mist |
| ![image](https://github.com/user-attachments/assets/d8cfa814-7532-42ca-b490-1ceee7925336) | ![image](https://github.com/user-attachments/assets/9f1a352d-9886-4353-92c5-e9c15b25ba5c) |
| yorumi shade | yorumi kraken |


### Installation

The theme has been added to the official kitty themes repo. The simplest way to use the theme is by the kitty themes kitten and following the prompts.
```
kitty +kitten themes
```


#### Manual Installation

Download the themes into your colors directory. This is normally `~/.config/kitty/themes` directory on a POSIX system.
```bash
curl -L -o /tmp/yorumi-abyss https://raw.githubusercontent.com/yorumicolors/kitty/refs/heads/main/yorumi-abyss.conf
curl -L -o /tmp/yorumi-mist https://raw.githubusercontent.com/yorumicolors/kitty/refs/heads/main/yorumi-mist.conf
curl -L -o /tmp/yorumi-shade https://raw.githubusercontent.com/yorumicolors/kitty/refs/heads/main/yorumi-shade.conf
curl -L -o /tmp/yorumi-kraken https://raw.githubusercontent.com/yorumicolors/kitty/refs/heads/main/yorumi-kraken.conf
mkdir -p $HOME/.config/kitty/themes
mv /tmp/yorumi-{abyss,mist,shade,kraken} $HOME/.config/kitty/themes
```

You can then set the colorscheme on your `~/.config/kitty/kitty.conf` as
```conf
include themes/yorumi-[abyss|mist|kraken|shade].conf
```
