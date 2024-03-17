# Iterate over all folders 
# Iterate over all files in the folder
for file in compressed/*; do
    # Check if the file is a video
    if [ -f "$file" ] && [ "${file: -4}" == ".mp4" ]; then
        echo "Compressing $file"
        # Compress the video
        # basename of the file
        filename=$(basename -- "$file")
        ffmpeg -i "$file" -vcodec libx264 -crf 28 "$filename"
    fi
done