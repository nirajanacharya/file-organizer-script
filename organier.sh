
#!/bin/bash

#Nirajan_Acharya-- way to 
IMAGE_DIR="Images"
DOCUMENT_DIR="Documents"
AUDIO_DIR="Audio"
VIDEO_DIR="Videos"
OTHER_DIR="Other"

# Create directories if they don't exist
mkdir -p "$IMAGE_DIR" "$DOCUMENT_DIR" "$AUDIO_DIR" "$VIDEO_DIR" "$OTHER_DIR"

for file in *; do
    if [ -f "$file" ]; then
        extension="${file##*.}"

        case "$extension" in
            jpg|jpeg|png|gif)
                mv "$file" "$IMAGE_DIR/"
                ;;
            doc|docx|pdf|txt)
                mv "$file" "$DOCUMENT_DIR/"
                ;;
            mp3|wav|ogg)
                mv "$file" "$AUDIO_DIR/"
                ;;
            mp4|avi|mkv)
                mv "$file" "$VIDEO_DIR/"
                ;;
            *)
                mv "$file" "$OTHER_DIR/"
                ;;
        esac
    fi
done

echo "Organizing complete!"
