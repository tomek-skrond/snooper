#!/bin/bash


display_help(){
	echo --------------------------------------
	echo "System for passive data and metadata acquisition from multimedia files"
	echo --------------------------------------
	figlet snooper
	echo --------------------------------------
	echo "Created by:"
	echo "Tomasz Skrond & Weronika Ryl"
	echo --------------------------------------
    	echo "Options:"
    	echo "  -d, --basic-metadata    Display basic metadata"
    	echo "  -e, --extract-text      Extract text from multimedia files (if available)"
    	echo "  -g, --geotag            Display geotag information"
    	echo "  -a, --all               Display all available information"
	echo "  -c, --clear             Clear all analysis files and their folders (default: ~/.snooper)"
    	echo "  -h, --help              Display this help and exit"
}

set_output_dir(){
    FILENAME=$1
    FILETYPE=$(exiftool $1 | grep -E '^File Type\ +:' | awk -F: '{print $2}' | tr -d ' ')
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

    FILENAME=$(basename $1)_$(date +"%m%d%y%k%M%S")
}

# Function to display basic metadata
display_basic_metadata() {
    set_output_dir $1
    exiftool -a -u -g1 "$1"
}
extract_text() {
    BASE_FILENAME=$(basename $1)
    set_output_dir $1
    echo $OUTPUT_DIR
    exiftool "$1" > $OUTPUT_DIR/$FILENAME
}

# Function to display geotag information
display_geotag() {
    set_output_dir $1
    exiftool -gps:all "$1"
}

# Function to display all available information
display_all_info() {
    set_output_dir $1
    exiftool "$1"
}

remove_cache() {
    echo "Cleaning up analysis files"
    rm -rf $HOME/.snooper/*
}

# Main script
if [ $# -lt 1 ]; then
    display_help
    exit 1
fi

# ./snooper.sh --extract-text-exif <plik>
# ./snooper.sh --extract-text-file <plik>
# ./snooper.sh --split-directory <folder> # domyslna komenda - file

while [ $# -gt 0 ]; do
    case "$1" in
        -d|--basic-metadata)
            display_basic_metadata "$2"
            ;;
        -e|--extract-text)
            extract_text "$2"
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
