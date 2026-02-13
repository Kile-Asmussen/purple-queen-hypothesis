# Purple Queen Hypothesis

This VSCode theme and icon pac is derived form the Synthwave '84 family of themes.

# Development

The whole theme is generated via `jq` scripts and Makefiles. The actual configuration of the theme exists in the `.json5` files:

- `package.json5` holds the package specification.
- `palette.json5` holds the named pallette of colors for the theme.
    - In the `themes/` files, names of colors can be used instead of a hex code, such as `"cyan"` for whichever color is given for the key `cyan`, or `"cyan,XX"` for the same color but with `XX` as a hex alpha value
    - In the `css/` files, names of colors are added as css variables to `:root` with the prefix `--pqh-theme-`.
- `theme/theme.json5` holds the theme file metadata.
- `theme/colors.json5` holds the full list of VSCode color properties. (WIP)
- `theme/tokenColors.json5` holds a the list of token colorations. (WIP)
- `icons/pack.json5` holds the association between the SVG files and languages/filenames/extensions, the icon keys are auto matically generated from available the SVG files.
- `css/effects.css` holds the optional extra css code that can be added to VSCode with the custom css loading extension.

# Acknowledgements

Thanks to the developers of the following amazing color and icon themes:

- [Sweet vscode Icons](https://github.com/EliverLara/sweet-vscode-icons)
- [SynthWave '84](https://github.com/robb0wen/synthwave-vscode)
- [Synthwave x Fluoromachine](https://github.com/webrender/synthwave-x-fluoromachine)
- [Synthwave x Fluoromachine & epic animations](https://github.com/thecodemonkey/synthwave-x-fluoromachine-epic-animations)
- [Synthwave x Fluoromachine 🝰 Avant Noir](https://github.com/OhaiHFO/synthwave-x-fluoromachine-avant-noir)
