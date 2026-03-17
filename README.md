# Persional Package Archive

Github repository and action to hold my persional deb packages.

To use this apt software source:

```bash
sudo wget https://github.com/black-desk/ppa/releases/latest/download/pub.key \
  -O /etc/apt/trusted.gpg.d/io.github.black-desk.ppa.asc
echo "deb https://github.com/black-desk/ppa/releases/latest/download/ ./" | \
  sudo tee /etc/apt/sources.list.d/io.github.black-desk.ppa.list
```

## Packages

- [Eugeny/tabby](https://github.com/Eugeny/tabby)
- [black-desk/debs](https://github.com/black-desk/debs)
- [clash-verge-rev/clash-verge-rev](https://github.com/clash-verge-rev/clash-verge-rev)
- [contour-terminal/contour](https://github.com/contour-terminal/contour)
- [shiftkey/desktop](https://github.com/shiftkey/desktop)
- [tinygo-org/tinygo](https://github.com/tinygo-org/tinygo)
- [wez/wezterm](https://github.com/twpayne/chezmoi)

## Note

These packages might failed to install if you are not using debian sid.
