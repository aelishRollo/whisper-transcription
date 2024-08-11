To use:


1. Drag and drop an audio file from the voice memos app into the main directory

2. Run source whisper-env/bin/activate

3. run the following command to transcribe the audio:  ./transcribe.sh

(the time to transcribe scales linearly with the duration of the voice memo for this model, which is 'large')

4. After a while, the formatted file will be saved in the transcriptions directory
