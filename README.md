# Omarchy Darcula Theme

A JetBrains Darcula-inspired theme pack for [Omarchy.org](https://omarchy.org) that keeps terminals, bars, notifications, and editors in sync with the classic charcoal base, warm orange keywords, and powder-blue selections.

<p align="center">
  <img src="theme.png" alt="Darcula Theme preview" />
</p>

## Highlights
- Curated for terminal emulators (Alacritty, Kitty, Ghostty) with unified 16-color tables and high-contrast selections.
- Desktop polish for Hyprland, Waybar, Mako, Walker, SwayOSD, and lock screens using the same accent tones.
- Editor integrations for Neovim (LazyVim + Darcula Solid), VS Code, Chromium, and Papirus-Dark icons to match.
- Wallpaper pack of seven moody scenes that echo the palette.

## Palette
| Role | Hex |
| --- | --- |
| Background | `#2B2B2B` |
| Surface | `#3C3F41` |
| Foreground | `#A9B7C6` |
| Muted Text | `#808080` |
| Accent Orange | `#CC7832` |
| Accent Yellow | `#FFD760` |
| Accent Blue | `#6897BB` |
| Accent Green | `#6A8759` |

## Background Set
<p align="center">
  <img src="backgrounds/1-fisher.png" alt="Fisher at dusk" width="30%" />
  <img src="backgrounds/2-readgirl.png" alt="Reading silhouette" width="30%" />
  <img src="backgrounds/3-dark-rain.png" alt="Neon rain" width="30%" />
</p>
<p align="center">
  <img src="backgrounds/4-hot.png" alt="Midnight neon" width="30%" />
  <img src="backgrounds/5-beach.png" alt="Overcast shoreline" width="30%" />
  <img src="backgrounds/6-oas.png" alt="Oracle of the sea" width="30%" />
</p>
<p align="center">
  <img src="backgrounds/7-oas.png" alt="Oasis skyline" width="30%" />
</p>

## Included Configs
- `alacritty.toml`, `kitty.conf`, `ghostty.conf`
- `hyprland.conf`, `hyprlock.conf`, `waybar.css`, `walker.css`, `swayosd.css`
- `btop.theme`, `mako.ini`, `icons.theme`
- `neovim.lua`, `vscode.json`, `chromium.theme`

## Usage
1. Copy this theme directory into `~/.config/omarchy/themes/` if it is not already present.
2. Set it as your active theme via the Omarchy CLI or by symlinking to `~/.config/omarchy/current/theme`.
3. Reload Hyprland (`hyprctl reload`), restart Waybar/Mako/SwayOSD, and re-open terminals/editors to apply.

Enjoy the consistent Darcula glow across your workflow!
