---
title:  Cmd-+ on Czech Keyboard
classes: wide
category: posts
tags:
  - Apple
  - macOs
header:
  overlay_image: https://source.unsplash.com/d9ILr-dbEdg/2560x400
  caption: Photo by [Agence Olloweb](https://unsplash.com/photos/d9ILr-dbEdg) on [Unsplash](https://unsplash.com)
---
The MacBook Czech keyboard (and probably other European/ISO keyboards as well) is missing the <span style="white-space: nowrap;">`Cmd-+`</span> key used to enlarge fonts in most programs.

[Here](https://github.com/prehor/dotfiles/blob/master/karabiner/assets/complex_modifications/command%2Bnon_us_backslash.json) is the [Karabiner-Elements](https://karabiner-elements.pqrs.org) complex mapping that maps <span style="white-space: nowrap;">`Cmd-<`</span> (at the left of key `1`) to <span style="white-space: nowrap;">`Cmd-+`</span>:

```json
{
  "title": "Change non_us_backslash",
  "rules": [
    {
      "description": "Change command+non_us_backslash to command+keypad_plus",
      "manipulators": [
        {
          "from": {
            "key_code": "non_us_backslash",
            "modifiers": {
              "mandatory": ["command"]
            }
          },
          "to": [
            {
              "key_code": "keypad_plus",
              "modifiers": ["command"]
            }
          ],
          "type": "basic"
        }
      ]
    },
    {
      "description": "Change command+option+non_us_backslash to command+option+keypad_plus",
      "manipulators": [
        {
          "from": {
            "key_code": "non_us_backslash",
            "modifiers": {
              "mandatory": ["command", "option"]
            }
          },
          "to": [
            {
              "key_code": "keypad_plus",
              "modifiers": ["command", "option"]
            }
          ],
          "type": "basic"
        }
      ]
    }
  ]
}
```
