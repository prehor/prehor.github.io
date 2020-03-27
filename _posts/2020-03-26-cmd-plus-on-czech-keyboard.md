---
title:  Cmd-+ on Czech Keyboard
classes: wide
category: posts
tags:
  - Apple
  - macOS
header:
  overlay_image: https://source.unsplash.com/d9ILr-dbEdg/2560x400
  caption: Photo by [Agence Olloweb](https://unsplash.com/photos/d9ILr-dbEdg) on [Unsplash](https://unsplash.com)
---
The MacBook Czech keyboard (and probably other European/ISO keyboards as well) is missing the `Cmd-+` key used to **Zoom In** in most applications.

[Here](https://github.com/prehor/dotfiles/blob/master/karabiner/assets/complex_modifications/command%2Bnon_us_backslash.json) is a complex modification for [Karabiner-Elements](https://karabiner-elements.pqrs.org) that maps `Cmd-<` key (at the left of key `1`) to `Cmd-+`:

* Download the file [command+non_us_backslash.json](https://raw.githubusercontent.com/prehor/dotfiles/master/karabiner/assets/complex_modifications/command%2Bnon_us_backslash.json) to the `~/.config/karabiner/assets/complex_modifications` folder.
* In the [Karabiner-Elements](https://karabiner-elements.pqrs.org) preferences go to the **Complex modifications** menu.
* Click **Add rule** and  enable both rules in **Change non_us_backslash** section.
* Enjoy `Cmd-+` with `Cmd-<` key (at the left of key `1`).
