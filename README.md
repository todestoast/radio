# radio
Bashscript-based radio station player

# usage
usage: <code>radio <i>stationname</i></code><br />
example: <code>radio kexp</code><br />
Or use the unique ID of every station: <code>radio <i>ID</i></code><br />
To get the ID for example search for a tag.<br /><br />
To play a random station: <code>radio random</code><br />
If you want to exclude stations with <i>word</i> in their name from random:<br />
<code>radio random -X <i>word</i></code><br />

-a --add<br />
add a station to local database. If called without any other parameter an interactive dialog guides you through the process of adding a station<br />
For not using the interactive version provide the following parameters (in this exact order): <br />
<br />
name (must not be empty)<br />
Stream URL (must not be empty)<br />
Backup-Stream URL<br />
Location of the station<br />
Tags<br />
<br />
To prevent any issues with special characters I strongly recommend to quote every parameter (see example)<br />
To leave a parameter empty just use ""<br />
<br />
example: <code>radio -a "Radio Station 2000" "http://streamingurl:8000" "" "San Francisco, USA" "club, dance, techno"</code><br />
<br />
in this example the value for the Backup-Stream URL is left empty<br />

-b --backup<br />
play backup stream (if exists). Might help if the primary streaming URL is not working

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

-mp --most-played<br />
lists the top 10 most played radio stations measured by duration of playing (most played first)<br />

-p --print<br />
prints the URL of a station. Can be used with names or IDs<br />
example: <code>radio -p 5</code><br />
to print the backup stream use <code>radio -p -b</code>

-r --region<br />
list all radio stations for specific region<br />
example: <code>radio -r beirut</code><br />
use <code>radio -r <i>search</i> random</code> to randomly play a station for that region<br />
example: <code>radio -r seattle random</code><br />

-rp --recently-played<br />
list 10 last played stations (newest first)<br />

-u --update<br />
updates the script itself. Caution: Every changes you might have done to the script yourself will be lost!<br />

-x<br />
use proxy for playing streams. Pass proxy in following format <i>http_proxy://url:port</i><br />
example: <code>radio -x http_proxy://proxy:8080 random</code><br />

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
- wget

## for running the software
- mplayer
- sqlite3 (if you install the software with the installer script sqlite is already installed)

# ensure integrity
## check urls in database
run url_checker.sh it will print out any URL with HTTP response 404
