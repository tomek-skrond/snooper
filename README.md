### Snooper
System for passive data and metadata acquisition from multimedia files

Created by:  Tomasz Skrond & Weronika Ryl

### Options:
```
1. Metadata extraction options (these operate on folders & files):

  -s, --split-directory   Perform an analysis of all files in the folder,
                          this option segregates all files by types.
  -e, --extract-metadata  Extract metadata from given file and save it to a folder

2. Metadata analysis options (these just print into stdout):

  -g, --geotag            Display geotag information

  -a, --all               Display all available information

  -c, --clear             Clear all (global) analysis files and their folders

3. COMBINE WITH Options -e & -a:

  -E, --exif-mode         Switches data extraction mode using exiftool (use with option -e and -a)

  -F, --file-mode         Switches data extraction mode using file command (use with option -e and -a)

  -P, --pdf-mode          Switches data extraction mode using pdfinfo command (use with option -e and -a)

4. COMBINE WITH Option -s:

  --format                Switches between format of output files (csv/json/html)

5. COMBINE WITH Option -s output directory (split_[0-9]{12}):

  --sqlite                Option that exports CSV analysis data to SQLite3 database

  --export-dir            Mandatory option for SQLite export - sets analysis folder path

  --db-name               Optional for SQLite export - sets desired database name

6. Help:

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

### Use cases

#### HTML Directory Splitting
You can use HTML Directory splitting option to create static HTML pages for a web server.

First - create analysis in 'html' directory splitting format on desired directory:
```
./snooper.sh --format html -s /path/to/directory/
```

Above command will create analysis files in HTML formats in a path: `/path/to/directory/split_[0-9]{12}/html/`.

You can upload analysis files into a web server static HTML root path (for nginx: /usr/share/nginx/html or /var/www/html).

This can be achieved by directly copying files into web directory or if using Docker - mounting analysis directory into specified path.

Using traditional nginx:
```
cp -r /path/to/directory/split_012724023736/html/* /var/www/html/
```

Using Docker:
```
docker run -dp 80:80 -v /path/to/directory/split_012724023736/html:/usr/share/nginx/html nginx
```

This way, you can access your analysis data via your Web browser to get a more readable experience.

Remember to always specify HTTP path as if `/path/to/directory/split_012724023736/html` was your current directory:
```
curl http://localhost/<file_type>/<file_name>.html
curl http://localhost/Python_script/writer.py.html
```
