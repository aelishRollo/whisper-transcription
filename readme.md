# Whisper Transcription Tool




## About This Project

### What It Does


- Transcribe Apple Voice Memos or other `.m4a` audio files.
- Convert interviews or spoken content into text format.
- Ensure privacy by keeping all transcription processes local.



This project provides a simple, local transcription tool that converts Apple Voice Memos —or any other `.m4a` audio files—into text files. 
This all happens on your machine, meaning any private or sensitive data is safe and sound, and is not sent off to some third party. 

Also, I recommend using a locally hosted LLM to at the very least polish and clean up the transcription. That's beyond the scope of this tool though.

### How It Works

The transcription process is powered by OpenAI's Whisper model, specifically using the `large` variant for higher accuracy. This is all hosted on your own machine when you fork this project, meaning your data stays with you. 

The tool automatically identifies the most recent `.m4a` file in the directory, transcribes it, and saves the result as a `.txt` file in the `transcriptions` directory.


### Necessary Parameters

-   **Operating System**: The tool is designed to run on macOS or any Unix-like system.
-   **Hardware**: The tool runs on a CPU. Processing time scales with the length of the audio file and the power of the CPU, so a modern multi-core processor is recommended for better performance.


### Intended Use Cases

This tool is particularly useful for:

- Transcribing personal voice memos.
- Converting interviews or spoken content into text format.
- Ensuring privacy by keeping all transcription processes local.

---

  

## Get the Project Set Up:

### Explanation of the  Steps:

  

-  **Clone the Repository**: How to clone the repository and navigate into the project directory.

-  **Setting Up the Virtual Environment**: Create the virtual environment.

-  **Installing Dependencies**: Install the required Python packages (`openai-whisper`) and FFmpeg using `pip` and `brew`, respectively.
---
  

1.  **Clone the Repository**:

  

```bash

git clone https://github.com/your-username/your-repo-name.git

cd your-repo-name

```

  

2.  **Set Up the Virtual Environment**:

  

```bash

python3 -m venv whisper-env

```

  

3.  **Activate the Virtual Environment**:

  

```bash

source whisper-env/bin/activate

```

  

4.  **Install Required Packages**:

  

```bash

pip install openai-whisper

brew install ffmpeg

```

  

## To Use:

  

1.  **Drag and drop an audio file** from the Voice Memos app into the main directory. You can also just put any `.m4a` file here from another location and it will work as well.

  

3.  **Activate the Virtual Environment** (You need to this every time the you open a new instance of the terminal to run the script):

  

```bash

source whisper-env/bin/activate

```

  

3.  **Run the Transcription Script**:

  

```bash

./transcribe.sh

```

  

*(The time to transcribe scales linearly with the duration of the voice memo for this model, which is `large`. You can expect this to take about as long as the audio file you are transcribing)*

  

4.  **Find the Transcription**:

  

After a while, the formatted file will be saved in the `transcriptions` directory.

  

---
