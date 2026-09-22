# Banish

# Installation Theme

To install this theme, simply use the omarchy-theme-install command:

```bash
omarchy-theme-install https://github.com/HANCORE-linux/omarchy-banish-theme.git
```

Omarchy skips every `.lua` in a theme installed from a repo, so this way leaves out
`gum_env.lua` and `hyprland.lua`. Clone into `~/custom-themes/banish` and link
instead to get the whole theme:

```bash
mkdir -p ~/custom-themes ~/.config/omarchy/themes &&
git clone https://github.com/HANCORE-linux/omarchy-banish-theme.git ~/custom-themes/banish &&
ln -sT ~/custom-themes/banish ~/.config/omarchy/themes/banish &&
omarchy theme set banish
```

<details>
<summary>Enable Shell Plugins</summary>

The custom menu, OSD and notification plugins are optional. The menu replaces
the built-in overlay; it does not add a bar widget. Install the plugins as real
folders so Shibumi's plugin catalog can read them.

**Previously used the symlink commands?** Remove those three links first. This
keeps the original files in the theme folder:

```bash
unlink ~/.config/omarchy/plugins/banish.menu
unlink ~/.config/omarchy/plugins/banish.osd
unlink ~/.config/omarchy/plugins/banish.notifications
```

Copy the plugins (works from Bash, Zsh and Fish):

```bash
mkdir -p ~/.config/omarchy/plugins &&
cp -a ~/.config/omarchy/themes/banish/shell-plugins/. ~/.config/omarchy/plugins/ &&
omarchy-shell shell rescanPlugins &&
echo "Plugins copied. Run the activation commands below."
```

**Then activate them:** copying alone does not enable the plugins. Each enable
command prints `Enabled banish.…` on success.

```bash
omarchy plugin enable banish.menu &&
omarchy plugin enable banish.osd &&
omarchy plugin enable banish.notifications &&
omarchy restart shell
```

After a theme update, copy the plugins again and run `omarchy restart shell`.

</details>

<details>
<summary>Remove Shell Plugins</summary>

To restore Omarchy's built-in menu, OSD and notifications:

```bash
omarchy plugin disable banish.menu && omarchy plugin remove banish.menu --yes
omarchy plugin disable banish.osd && omarchy plugin remove banish.osd --yes
omarchy plugin disable banish.notifications && omarchy plugin remove banish.notifications --yes

omarchy restart shell
```

The original files in the theme folder are kept.

</details>

<img width="2560" height="1440" alt="banish preview" src="preview.png" />

<img width="2560" height="1440" alt="Banish desktop with menu, OSD and notifications" src="preview-shell.png" />

#### Quickshell-Bar
[LINK](https://github.com/HANCORE-linux/Shibumi-Shell)

#### Theme-Hook-Manager
[Link](https://github.com/OldJobobo/theme-hook-plugin-manager)
