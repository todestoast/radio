# radio
Bashscript-based radio station player

# usage
usage: radio <stationname>
example: radio kexp

-h --help
displays help menu

-l --list <i>search</i>
search radiostations for specific word. This doesn't search for a stationname but for a tag.<br />
example: <code>radio -l ambient</code> <br />
use <code>radio <i>search</i> random</code> to randomly play a station that matches the search<br />
example: <code>radio -l ambient random</code><br />

-la --list-all
list all station Names (Caution: There might be a lot!)

# installation
## easy installation
please check 'requirements' before running any command

1. <code>git clone https://github.com/todestoast/radio</code>
2. <code>cd radio</code>
3. <code>chmod +x installer.sh</code>
4. <code>./installer.sh</code>

## manual installation
0. checkout the code of this repository
1. create ~/.radio
2. copy radio.db to this directory
3. compile sqlite3 cli tool to this directory (see https://sqlite.org/howtocompile.html)
4. copy radio to /usr/local/bin

# requirements
## for installer.sh
- git
- gcc
- unzip

## for running the software
- mplayer
- sqlite3 (if you install the software with the installer script sqlite is already installed)
