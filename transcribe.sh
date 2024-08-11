#!/bin/bash

# Get the latest file in the directory with an m4a extension
latest_file=$(ls -t *.m4a | head -n 1)

# Check if the file exists
if [ -z "$latest_file" ]; then
  echo "No audio files found in the directory."
  exit 1
fi

# Define the output file name
output_file="transcriptions/${latest_file%.*}.txt"

# Run Whisper transcription
python3 -c "
import whisper
model = whisper.load_model('large')
result = model.transcribe('$latest_file')
with open('$output_file', 'w') as f:
    f.write(result['text'])
"

echo "Transcription completed. Saved to $output_file."
