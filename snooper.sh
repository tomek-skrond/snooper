#!/bin/bash

install_dependencies(){
	sudo apt install -y figlet \
			exiftool
}

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
    	echo "  -h, --help              Display this help and exit"
}

set_output_dir(){
    case "$1" in
        *.jpg|*.jpeg|*.png|*.gif)
            OUTPUT_DIR="$2/images"
            ;;
        *.mp3|*.wav|*.flac)
            OUTPUT_DIR="$2/audio"
            ;;
        *.mp4|*.mov|*.avi)
            OUTPUT_DIR="$2/videos"
            ;;
        *)
            OUTPUT_DIR="$2/other"
            ;;
    esac

    if [ ! -d "$OUTPUT_DIR" ]; then
        mkdir -p "$OUTPUT_DIR"
    fi
}

# Function to display basic metadata
display_basic_metadata() {
    exiftool -a -u -g1 "$1"
}

# Function to extract text from multimedia files
extract_text() {
    exiftool -textOut - "$1"
}

# Function to display geotag information
display_geotag() {
    exiftool -gps:all "$1"
}

# Function to display all available information
display_all_info() {
    exiftool "$1"
}

# Main script
if [ $# -lt 2 ]; then
    display_help
    exit 1
fi

while [ $# -gt 1 ]; do
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
        -o|--output-dir)
            OUTPUT_DIR="$2"
            ;;
        -h|--help)
            display_help
            exit 0
            ;;
        *)
            echo "Invalid option: $1"
            display_help
            exit 1
            ;;
    esac
    shift
done
