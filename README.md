# radio
Bashscript-based radio station player

# usage
usage: radio <stationname>
example: radio kexp

-h --help
displays help menu

-l --list <i>search</i>
search radiostations for specific word. This doesn't search for a stationname but for a tag.
example: <code>radio -l ambient</code>
use <code>radio <i>search</i> random</code> to randomly play a station that matches the search
example: <code>radio -l ambient random</code>

-la --list-all
list all station Names (Caution: There might be a lot!)

# installation
## easy installation
please check 'requirements' before running any command

1. <code>git clone https://github.com/todestoast/radio</code>
2. <code>cd radio</code>
3. <code>chmod +x installer.sh</code>
4. <code>./installer.sh</code>

# requirements for installer.sh
- git
- gcc

#requirements for running the software
- mplayer
-sqlite3 (if you install the software with the installer script sqlite is already installed)
