#!/usr/bin/env bash

# Create a temporary directory or use a unique prefix
# For simplicity, we'll use a prefix here.

temp_prefix="temp_rename_"
i=0

# Pass 1: Rename all original files to a temporary name
for fi in *.jpg; do
    mv "$fi" "${temp_prefix}${i}.jpg"
    i=$((i+1))
done

# Pass 2: Rename the temporary files to their final names
# Reset counter for the second pass
i=0
for temp_fi in "${temp_prefix}"*.jpg; do
    mv "$temp_fi" "${i}.jpg"
    i=$((i+1))
done
