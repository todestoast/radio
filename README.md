# radio
Bashscript-based radio station player

# usage
usage: <code>radio <i>stationname</i></code><br />
example: <code>radio kexp</code>

-h --help<br />
displays this help menu

-l --list <search><br />
search radiostations for specific word. This doesn't search for a stationname but for a tag.<br />
example: <code>radio -l ambient</code><br />
use <code>radio -l <i>search</i> random</code> to randomly play a station that matches the search<br />
example: <code>radio -l ambient random</code><br />

-la --list-all<br />
list all station Names (Caution: There might be a lot!)

-lr --list-regions<br />
list all regions for radio stations

-r --region<br />
list all radio stations for specific region<br />
example: <code>radio -r beirut</code><br />
use <code>radio -r <i>search</i> random</code> to randomly play a station for that region<br />
example: <code>radio -r seattle random</code><br />

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
2. copy radio.db and db.md5 to this directory
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
- datecalc
