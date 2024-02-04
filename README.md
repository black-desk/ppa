# Persional Package Archive

Github repository and action to hold my persional deb packages.

To use this apt software source:

```bash
sudo wget https://github.com/black-desk/ppa/releases/latest/download/pub.key \
  -O /etc/apt/trusted.gpg.d/io.github.black-desk.ppa.asc
echo "deb https://github.com/black-desk/ppa/releases/latest/download/ ./" | \
  sudo tee /etc/apt/sources.list.d/io.github.black-desk.ppa.list
```
