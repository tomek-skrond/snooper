#!/bin/bash

snooper(){
cat<<"EOF"
⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⡿⠛⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠛⠻⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣷⣤⣤⣶⣿⣿⣿⣿⣿⠛⠻⢿⣿⣿⣿⣿⣷⡤⠀⢀⣁⣠⣄⡉⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠈⠻⣿⣿⣿⠏⢠⣶⡿⠟⠛⠛⢿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣾⣿⣿⠇⢰⣿⡏⢠⣤⡦⠀⡀⠙⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠀⢸⣿⡇⠘⢻⠀⡀⡅⠀⣸⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡈⢻⣷⣄⠘⠘⠁⢀⣴⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠙⠻⢷⣶⣾⠿⠋⢰⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣦⡄⠀⠀⠀⠀⠀⠀⠀
 ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠀⠀
EOF

}
display_help(){
	echo ----------------------------------------------------------------------------
	figlet snooper
	snooper
	echo ----------------------------------------------------------------------------
	echo "System for passive data and metadata acquisition from multimedia files"
	echo ----------------------------------------------------------------------------
	echo "Created by:"
	echo "Tomasz Skrond & Weronika Ryl"
	echo ----------------------------------------------------------------------------
	echo "1. Metadata extraction options (these operate on folders & files):"
        echo "  -s, --split-directory   Perform an analysis of all files in the folder,"
        echo "                          this option segregates all files by types."
	echo "  -e, --extract-metadata  Extract metadata from given file and save it to a folder"
	echo ""
	echo "2. Metadata analysis options (these just print into stdout):"
    	echo "  -g, --geotag            Display geotag information"
    	echo "  -a, --all               Display all available information"
	echo "  -c, --clear             Clear all (global) analysis files and their folders"
        echo ""
	echo "3. COMBINE WITH Options -e & -a:"
	echo "  -E, --exif-mode         Switches data extraction mode using exiftool (use with option -e and -a)"
	echo "  -F, --file-mode         Switches data extraction mode using file command (use with option -e and -a)"
        echo "  -P, --pdf-mode          Switches data extraction mode using pdfinfo command (use with option -e and -a)"
        echo ""
	echo "4. COMBINE WITH Option -s:"
	echo "  --format                Switches between format of output files (csv/json/html)"
	echo ""
	echo "5. COMBINE WITH Option -s output directory (split_[0-9]{12}):"
	echo "  --sqlite                Option that exports CSV analysis data to SQLite3 database"
	echo "  --export-dir            Mandatory option for SQLite export - sets analysis folder path"
	echo "  --db-name               Optional for SQLite export - sets desired database name"
	echo ""
	echo "6. Help:"
    	echo "  -h, --help              Display this help and exit"
	echo ---------------------------------------------------------------------------
	echo "Additional info:"
	echo "- All global metadata (extracted using -e option) is saved in ~/.snooper directory with names of origin file and numeric value with date format %m%d%y%H%M%S (12 digits)"
	echo "- Using -E and -F flags, you can switch between EXIF and FILE modes, EXIF mode uses exiftool to extract data, FILE uses file command to extract data"
	echo ""
	echo "--------------------------------------------------------------------------"
	echo "Example command usages:"
	echo "--------------------------------------------------------------------------"
	echo ""
	echo "Perform analysis on certain folder (arrange in folders with file types and .csv analysis):"
	echo "./snooper.sh [-s/--split-directory] <folder_name>"
	echo ""
	echo "Extract metadata & save it to ~/.snooper folder"
	echo "./snooper.sh [-e/--extract-metadata] <file_name>"
	echo ""
	echo "Display geotag for a file (if found)"
	echo "./snooper.sh [-g/--geotag] <file_name>"
	echo ""
	echo "Display all available info about file (exif)"
	echo "./snooper.sh [-a/--all] <file_name>"
	echo ""
	echo "Clear all data from ~/.snooper"
	echo "./snooper.sh [-c/--clear]"
	echo ""
	echo "Extracting metadata for files (exif/file mode) with export to ~/.snooper"
	echo "./snooper.sh [-E/--exif-mode] [-e/--extract-metadata] <file_name>"
	echo "./snooper.sh [-F/--file-mode] [-e/--extract-metadata] <file_name>"
	echo ""
	echo "Extracting metadata for files (exif/file mode) - console output only"
        echo "./snooper.sh [-E/--exif-mode] [-a/--all] <file_name>"
        echo "./snooper.sh [-F/--file-mode] [-a/--all] <file_name>"
	echo ""
	echo "Exporting to SQLite3:"
	echo "./snooper.sh [--export-dir] <directory_path> [--db-name] <database_name> [--sqlite]"
	echo ""
}

#sets path for output directory and file name when writing results to file is necessary
set_output_dir(){
    FILENAME=$1
    FILETYPE=$(file --brief $1 | sed -E 's/ /_/g' | awk -F, '{print $1}')

    if [ -z "$FILETYPE" ]; then
        FILETYPE="unknown"
    fi

    DIRNAME=$2
    if [ -z "$2" ]; then
	DIRNAME=$HOME/.snooper
    fi

    OUTPUT_DIR=$DIRNAME/$FILETYPE
    if [ ! -d "$OUTPUT_DIR" ]; then
        mkdir -p "$OUTPUT_DIR"
    fi

    FILENAME=$(basename $1)_$(date +"%m%d%y%H%M%S")
}

split_directory(){
    
    WORKDIR=$(realpath $1)
    #EXPORT_FORMAT="$2"
    echo $EXPORT_FORMAT

    if [ ! -d "$WORKDIR" ]; then
        echo "Directory does not exist - exiting!"
	exit 1
    fi
    
    cd $WORKDIR

    CURRENT_DATE=$(date +"%m%d%y%H%M%S")
    SPLIT_DIRNAME=$WORKDIR/split_${CURRENT_DATE}
    
    if [ "$(find "${WORKDIR}" -type d -print | grep -cE 'split_([0-9]{12})')" -gt 0 ]; then
	echo "Found potential analysis folders generated by Snooper"
        read -p "Do you want to remove previous analysis files?(y/N)" user_input
	user_input="${user_input,,}"
	if [[ "$user_input" == "y" ]]; then
	    rm -rf split_*/
	fi
    fi

    mkdir -p $SPLIT_DIRNAME

    ALL_FILES=($(find "${WORKDIR}" -type f -print))

    for f in ${ALL_FILES[@]}; do
	if [ "$(realpath $f | grep -cE 'split_([0-9]{12})')" -gt 0 ]; then
	    echo "skipping (analysis files), $(realpath $f)"
	    continue
	fi
	#file --brief $f
	FILETYPE=$(file --brief $f | sed -E 's/ /_/g; s/[(|)]//g; s/[\/]//g; s/\[//g' | awk -F, '{print $1}')
        if [ -z "$FILETYPE" ]; then
            FILETYPE="unknown"
        fi
	
	#echo $FILETYPE
	mkdir -p ${SPLIT_DIRNAME}/${EXPORT_FORMAT}/${FILETYPE}

	if [[ "$EXPORT_FORMAT" == "csv" ]]; then
	        echo analysing $(realpath $f)
		exiftool -csv $f > ${SPLIT_DIRNAME}/${EXPORT_FORMAT}/${FILETYPE}/$(basename ${f}).csv
	elif [[ "$EXPORT_FORMAT" == "json" ]]; then
	        echo analysing $(realpath $f)
                exiftool -json $f > ${SPLIT_DIRNAME}/${EXPORT_FORMAT}/${FILETYPE}/$(basename ${f}).json
	elif [[ "$EXPORT_FORMAT" == "html" ]]; then
                echo analysing $(realpath $f)
                exiftool -htmlFormat $f > ${SPLIT_DIRNAME}/${EXPORT_FORMAT}/${FILETYPE}/$(basename ${f}).html
		echo "<style>table {border-collapse: collapse;width: 100%;margin-bottom: 20px;box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);}table, th, td {border: 1px solid #ddd;}th, td {padding: 12px;text-align: left;}th {background-color: #4CAF50;color: #fff;}tr:nth-child(even) {background-color: #f0f8ff;}</style>" >> ${SPLIT_DIRNAME}/${EXPORT_FORMAT}/${FILETYPE}/$(basename ${f}).html
	else
		echo "Format not supported, exiting"
		echo "Available formats: csv/json/html"
		exit 1
	fi

    done
}

# extracts all exif metadata of a file and saves it to a file
extract_metadata() {
    BASE_FILENAME=$(basename $1)
    set_output_dir $1

    filetype=$(file -b "$1")

    if [[ "$MODE" == "exif" ]];then
    	exiftool "$1" > $OUTPUT_DIR/$FILENAME
    elif [[ "$MODE" == "file" ]];then
	file "$1" > $OUTPUT_DIR/$FILENAME
    elif [[ "$MODE" == "pdf" ]];then
	filetype=$(echo ${filetype,,} | grep -io pdf)
	if ! [[ $filetype == "pdf" ]];then 
		echo ${filetype,,}
		echo "not a pdf file"
		exit 1
	fi
	pdfinfo "$1" > $OUTPUT_DIR/$FILENAME
    else
	echo "Invalid mode specified (available modes: file/exif/pdf), exiting"
	exit 1
    fi

    echo "File saved in: $OUTPUT_DIR/$FILENAME"

}



# Function to display geotag information
display_geotag() {
    #set_output_dir $1
    exiftool -gps:all "$1"
}

# Function to display all available information
display_all_info(){
    filetype=$(file -b "$1")
    echo $filetype
    if [[ "$MODE" == "exif" ]];then
        exiftool "$1"
    elif [[ "$MODE" == "file" ]];then
        file "$1"
	file -v "$1"
    elif [[ "$MODE" == "pdf" ]];then
	filetype=$(echo ${filetype,,} | grep -io "pdf")
        if ! [[  $filetype == "pdf" ]];then
                echo "not a pdf file"
                exit 1
        fi
	pdfinfo "$1"
    else
        echo "Invalid mode specified (available modes: file/exif), exiting"
        exit 1
    fi
}

remove_cache() {
    echo "Cleaning up analysis files"
    rm -rf $HOME/.snooper/*
}
check_if_file() {
	file=$1
        if ! [[ -f "$file" ]]; then
        	echo "$file not a file - skipping"
                continue
        fi
}
sqlite_export() {
    # Specify the directory
    DB_EXPORT_DIRECTORY=$(realpath "$1")
    DB_NAME="$2"

    # check if directory exists
    if [ ! -d "$DB_EXPORT_DIRECTORY" ]; then
        echo "Directory does not exist."
        exit 1
    fi
     
    # Iterate through files in the directory
    for subdir in "$DB_EXPORT_DIRECTORY"/*; do

 	if [ ! -d "$subdir" ]; then
        	echo "Directory does not exist."
        	continue
	fi
 
	label=$(basename "$subdir" | cut -d. -f1)
        
	echo Table name: $label
        
	mkdir -p "$subdir"/all

	echo "here1"
	
	for file in "$subdir"/*; do

		if ! [[ -f "$file" ]]; then
                        #echo "$file not a file - skipping"
                        continue
                fi

		head -n 1 "$file" > "$subdir"/all/all.csv
	done
	echo "here2"
	for file in "$subdir"/*; do

                if ! [[ -f "$file" ]]; then
                        #echo "$file not a file - skipping"
                        continue
                fi

		tail -n +2 "$file" >> "$subdir"/all/all.csv

		sqlite3 $HOME/.snooper/exported_databases/${DB_NAME}.db <<EOF
CREATE TABLE IF NOT EXISTS "$label" (
    $(head -n 1 "$subdir"/all/all.csv)
);
EOF

        done
        
	echo "Uploading consolidated .csv file"
        sqlite3 $HOME/.snooper/exported_databases/${DB_NAME}.db <<EOF
.mode csv
.import "$subdir/all/all.csv" "$label"
EOF
    	echo "Cleanup"
	rm -rf "$subdir/all/"

    done

}

# Main script
if [ $# -lt 1 ]; then
    display_help
    exit 1
fi

#DEFAULT GLOBALS
export MODE="exif"
export DB_NAME="database"
export DB_EXPORT_DIRECTORY=""
export EXPORT_FORMAT="csv"

mkdir -p $HOME/.snooper/exported_databases/

while [ $# -gt 0 ]; do
    case "$1" in
        -e|--extract-metadata)
            extract_metadata "$2"
            ;;
        -g|--geotag)
            display_geotag "$2"
            ;;
        -a|--all)
            display_all_info "$2"
            ;;
	-c|--clear)
	    remove_cache
	    ;;
	-s|--split-directory)
	    split_directory "$2"
	    ;;
	-F|--file-mode)
	    MODE="file"
	    ;;
	-E|--exif-mode)
	    MODE="exif"
	    ;;
	-P|--pdf-mode)
	    MODE="pdf"
	    ;;
	--format)
	    shift
	    EXPORT_FORMAT="$1"
	    ;;
	--db-name)
	    shift
	    DB_NAME="$1"
	    ;;
	--export-dir)
	    shift
	    DB_EXPORT_DIRECTORY="$1"
	    ;;
	--sqlite)
	    echo Exporting contents from: $DB_EXPORT_DIRECTORY
	    echo Exported SQLite DB name: ${DB_NAME}[.db]
	    sqlite_export "$DB_EXPORT_DIRECTORY" "$DB_NAME"
	    ;;
        -h|--help)
            display_help
            exit 0
            ;;
	--)
	    break
	    ;;
        *)
            exit 1
            ;;
    esac
    shift
done
