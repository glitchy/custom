# Customs

This repository contains custom configurations and scripts that have made terminal life easier and more enjoyable.

NB:
- All run commands are from repository root unless otherwise specified.

## Tilix (Linux)
My daily driver on linux.

#### Instructions
1. download [tilix][tilix]
2. run `dconf load '/com/gexperts/Tilix/' < ./tilix/tilix-settings.dconf`

## Neovim
Tinkering with custom lua configs are a lot of fun (a worthwhile learning endeavor), but an absolute pain to maintain longterm. After courting several flavors of neovim, I've defaulted to using [NvChad][nvchad] as a base due to maintainability and ease of integrating my own custom vim configs.

#### Instructions
1. install [NvChad][nvchad]
2. run `cp -rf nvim/custom ~/.config/nvim/lua/custom && nvim`

NB:
- change buffers: `[C-h]` && `[C-j]`
- copilot is disabled by default

## Scripts


[nvchad]: https://nvchad.com/
[tilix]: https://gnunn1.github.io/tilix-web/
