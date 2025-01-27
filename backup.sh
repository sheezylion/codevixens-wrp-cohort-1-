#!/bin/bash


# Prompt the user to input a filename
echo "Enter the filename to back up (e.g., file.txt): "
read filename

# Define the backup directory
backup_dir="backups"

# Ensure the backup directory exists
if [ ! -d "$backup_dir" ]; then
    mkdir "$backup_dir"
fi

# Define the backup file path
backup_file_path="$backup_dir/$filename"

# Check if the backup already exists
if [ -f "$backup_file_path" ]; then
    echo "Backup already exists."
else
    # Check if the original file exists
    if [ -f "$filename" ]; then
        # Copy the file to the backup directory
        cp "$filename" "$backup_file_path"
        echo "Backup completed."
    else
        echo "Error: The file '$filename' does not exist."
    fi
fi

~
