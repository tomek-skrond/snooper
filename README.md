 
⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⡿⠛⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠛⠻⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣷⣤⣤⣶⣿⣿⣿⣿⣿⠛⠻⢿⣿⣿⣿⣿⣷⡤⠀⢀⣁⣠⣄⡉⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀ ⠈⠻⣿⣿⣿⠏⢠⣶⡿⠟⠛⠛⢿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣾⣿⣿⠇⢰⣿⡏⢠⣤⡦⠀⡀⠙⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠀⢸⣿⡇⠘⢻⠀⡀⡅⠀⣸⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡈⢻⣷⣄⠘⠘⠁⢀⣴⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠙⠻⢷⣶⣾⠿⠋⢰⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀
                               ⠈⠻⣿⣦⡄⠀⠀⠀⠀⠀⠀⠀
                                 ⠈⠛⠛⠀⠀
### Snooper
System for passive data and metadata acquisition from multimedia files

Created by:  Tomasz Skrond & Weronika Ryl

### Options:
```
  -s, --split-directory   Perform an analysis of all files in the folder,
                          this option segregates all files by types.

  -e, --extract-metadata  Extract metadata from given file and save it to a folder

  -g, --geotag            Display geotag information

  -a, --all               Display all available information

  -c, --clear             Clear all (global) analysis files and their folders

  -E, --exif-mode         Switches data extraction mode using exiftool (use with option -e and -a)

  -F, --file-mode         Switches data extraction mode using file command (use with option -e and -a)

  --sqlite                Option that exports CSV analysis data to SQLite3 database

  --export-dir            Mandatory option for SQLite export - sets analysis folder path

  --db-name               Optional for SQLite export - sets desired database name

  -h, --help              Display this help and exit

```
### Additional info:

All global metadata (extracted using -e option) is saved in `~/.snooper` directory with names of origin file and numeric value with date format `%m%d%y%H%M%S` (13 digits)

### Command usages:
```
--------------------------------------------------------------------------
Example command usages:
--------------------------------------------------------------------------

Perform analysis on certain folder (arrange in folders with file types and .csv analysis):

./snooper.sh [-s/--split-directory] <folder_name>

Extract metadata & save it to ~/.snooper folder

./snooper.sh [-e/--extract-metadata] <file_name>

Display geotag for a file (if found)

./snooper.sh [-g/--geotag] <file_name>

Display all available info about file (exif)

./snooper.sh [-a/--all] <file_name>

Clear all data from ~/.snooper

./snooper.sh [-c/--clear]

Extracting metadata for files (exif/file mode) with export to ~/.snooper

./snooper.sh [-E/--exif-mode] [-e/--extract-metadata] <file_name>

./snooper.sh [-F/--file-mode] [-e/--extract-metadata] <file_name>

Extracting metadata for files (exif/file mode) - console output only

./snooper.sh [-E/--exif-mode] [-a/--all] <file_name>

./snooper.sh [-F/--file-mode] [-a/--all] <file_name>

Exporting to SQLite3:

./snooper.sh [--export-dir] <directory_path> [--db-name] <database_name> [--sqlite]

```
