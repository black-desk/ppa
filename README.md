# Personal Package Archive

GitHub repository and actions to hold my personal deb packages.

To use this apt software source:

```bash
sudo wget https://github.com/black-desk/ppa/releases/latest/download/pub.key \
  -O /etc/apt/trusted.gpg.d/io.github.black-desk.ppa.asc
echo "deb https://github.com/black-desk/ppa/releases/latest/download/ ./" | \
  sudo tee /etc/apt/sources.list.d/io.github.black-desk.ppa.list
```

## Packages

From GitHub releases:

- [black-desk/debs](https://github.com/black-desk/debs)
- [mkasberg/ghostty-ubuntu](https://github.com/mkasberg/ghostty-ubuntu)
- [shiftkey/desktop](https://github.com/shiftkey/desktop) (GitHub Desktop)
- [wezterm/wezterm](https://github.com/wezterm/wezterm)

Downloaded directly:

- [Discord](https://discord.com)
- [WeChat (Linux)](https://weixin.qq.com)
- [QQ (Linux)](https://im.qq.com)

## Note

These packages might fail to install if you are not using Debian sid.
