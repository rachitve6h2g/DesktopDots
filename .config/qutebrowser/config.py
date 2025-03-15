# Set catppuccin colors as your theme
import os
from urllib.request import urlopen

# load your autoconfig, use this, if the rest of your config is empty!
config.load_autoconfig()

if not os.path.exists(config.configdir / "theme.py"):
    theme = "https://raw.githubusercontent.com/catppuccin/qutebrowser/main/setup.py"
    with urlopen(theme) as themehtml:
        with open(config.configdir / "theme.py", "a") as file:
            file.writelines(themehtml.read().decode("utf-8"))

if os.path.exists(config.configdir / "theme.py"):
    import theme
    theme.setup(c, 'mocha', True)

c.tabs.background = True
c.downloads.position = 'bottom'

config.bind('<Ctrl+/>', 'hint links spawn --detach mpv {hint-url}')

# For yt-dl
config.bind('ya', 'spawn --userscript audio_download')

c.url.searchengines['gw'] = 'https://wiki.gentoo.org/index.php?search={}'
