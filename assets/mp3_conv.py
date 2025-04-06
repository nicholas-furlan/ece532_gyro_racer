from pydub import AudioSegment
import os
import sys

def convert_mp3_to_wav(input_path, output_path=None):
    """
    Convert an MP3 file to WAV format.

    Args:
        input_path (str): Path to the input MP3 file
        output_path (str, optional): Path for the output WAV file. If not provided,
                                   will use the same name as input with .wav extension
    """
    try:
        # If output path is not provided, create one based on input path
        if output_path is None:
            output_path = os.path.splitext(input_path)[0] + '.wav'

        # Load the MP3 file
        audio = AudioSegment.from_mp3(input_path)

        # Export as WAV
        audio.export(output_path, format='wav')
        print(f"Successfully converted {input_path} to {output_path}")
        return True

    except Exception as e:
        print(f"Error converting file: {str(e)}")
        return False

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python mp3_conv.py input.mp3 [output.wav]")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else None

    convert_mp3_to_wav(input_file, output_file)
