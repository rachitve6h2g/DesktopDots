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
config.bind('yv', 'hint links spawn --verbose --output-messages yt-dlp --external-downloader aria2c --add-metadata -o $HOME/Videos/Yt-Dlp/%(title)s-%(id)s%.%(ext)s {hint-url}')

# For audio download
# config.bind('ya', 'hint links spawn --verbose --output-messages yt-dlp -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --external-downloader aria2c --downlader aria2c --external-downloader-args aria2c:"-c --conf-path=${HOME}/.config/aria2/aria2c.conf" -o "${HOME}/Music/%(title)s.%(ext)s" --add-metadata --embed-thumbnail {hint-url}')
# config.bind('ya', 'hint links spawn --verbose --output-messages --detach yt-dlp -f bestaudio -x --audio-format mp3 --audio-quality 0 --external-downloader aria2c --external-downloader-args aria2c:"-c -s16 -x16 -k1M" -o "~/Music/%(title)s.%(ext)s" --add-metadata --embed-thumbnail {hint-url}')
config.bind('ya', 'hint links spawn --userscript music-download {hint-url}')


