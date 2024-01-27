# customs
This repository contains custom configurations and scripts that have made terminal life easier and more enjoyable.

notes:
- all run commands are from repository root unless otherwise specified

## keyboard ("take back CTRL")
Do yourself a _massive_ favor and remap `Ctrl` to your `Caps Lock` key on your keyboard. The impact of this is > the `.` trick in vim. Instructions on how-to will be keyboard specific.

notes:
- I remapped my `Caps Lock` to `[Fn-Alt-Tab]` over two years ago now and haven't used it once

## tilix (linux)
The daily driver.

#### instructions
1. download [Tilix][tilix]
2. run `dconf load '/com/gexperts/Tilix/' < ./tilix/tilix-settings.dconf`

notes:
- change windows: `[A-h]` && `[A-j]`
- copy/paste: `[C-S-c]`/`[C-S-v]`

## neovim
Tinkering with custom lua configs are a lot of fun (a worthwhile learning endeavor), but an absolute pain to maintain longterm. After courting several flavors of neovim, I've defaulted to using [NvChad][nvchad] as a base due to maintainability and ease of integrating my own custom vim configs.

#### instructions
1. install [NvChad][nvchad]
2. run `cp -rf nvim/custom ~/.config/nvim/lua/custom && nvim`

notes:
- change buffers: `[C-h]` && `[C-j]`
- normal copy: `[Cmd-y]`
- insert paste: `[C-S-v]`
- copilot is disabled by default

## scripts
Read the comments.

[nvchad]: https://nvchad.com/
[tilix]: https://gnunn1.github.io/tilix-web/
