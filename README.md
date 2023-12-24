 
⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⡿⠛⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠛⠻⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀   ⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
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

  -h, --help              Display this help and exit
```

### Additional info:

All global metadata (extracted using -e option) is saved in `~/.snooper` directory with names of origin file and numeric value with date format `%m%d%y%H%M%S` (13 digits)

### Command usages:
```
./snooper.sh [-s/--split-directory] <folder_name>

./snooper.sh [-e/--extract-metadata] <file_name>

./snooper.sh [-g/--geotag] <file_name>

./snooper.sh [-a/--all] <file_name>

./snooper.sh [-c/--clear]
```
