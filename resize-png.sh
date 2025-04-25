#!/usr/bin/env bash
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Resize PNG
# @raycast.mode compact
# @raycast.packageName Image

# Optional parameters:
# @raycast.icon 📄
# @raycast.argument1 { "type": "text", "placeholder": "PNG file path" }

# Documentation:
# @raycast.description Resize a PNG file to 32x32 and 256x256
# @raycast.author Maxime Antoine
# @raycast.authorURL https://github.com/maximeantoine1997

# Check if a file path was provided
if [ -z "$1" ]; then
    echo "Please provide a PNG file path"
    exit 1
fi

# Get the input file path
input_file="$1"

# Check if the file exists
if [ ! -f "$input_file" ]; then
    echo "Error: File does not exist"
    exit 1
fi

# Check if it's a PNG file
if [[ ! "$input_file" =~ \.png$ ]]; then
    echo "Error: Input file must be a PNG file"
    exit 1
fi

# Get the Downloads folder path
downloads_folder="$HOME/Downloads"

# Get the filename without extension
filename=$(basename "$input_file" .png)

# Run the Python script
python3 "$(dirname "$0")/png_resizer.py" "$input_file"

# Move the resized files to Downloads
mv "${input_file%.png}_32x32.png" "$downloads_folder/${filename}_32x32.png"
mv "${input_file%.png}_256x256.png" "$downloads_folder/${filename}_256x256.png"

echo "Successfully resized $filename and moved to Downloads folder" 