import wave
import os
import sys
import numpy as np
from scipy import signal

def hex_to_wav(input_hex_path):
    # Get the output filename by replacing .hex with _d.wav
    output_wav_path = os.path.splitext(input_hex_path)[0] + '_d.wav'

    # Read the hex file
    with open(input_hex_path, 'r') as hex_file:
        # Read all lines and join them
        hex_data = ''.join(line.strip() for line in hex_file)
        # Split by spaces and convert hex strings to bytes
        hex_bytes = bytes.fromhex(''.join(hex_data.split()))

    print(f"\nRead {len(hex_bytes)} bytes from hex file")

    # Convert bytes to numpy array
    audio_array = np.frombuffer(hex_bytes, dtype=np.uint8)
    print(f"Converted to {len(audio_array)} samples")

    # Create WAV file
    with wave.open(output_wav_path, 'wb') as wav_file:
        # Set WAV parameters
        wav_file.setnchannels(1)  # Mono
        wav_file.setsampwidth(1)  # 8-bit
        wav_file.setframerate(8000)  # 8000 Hz

        # Write audio data
        wav_file.writeframes(audio_array.tobytes())

    print(f"\nOutput Summary:")
    print(f"Written {len(audio_array)} bytes to {output_wav_path}")
    print(f"Format: 8-bit unsigned PCM, 8000 Hz, mono")

def wav_to_hex(input_wav_path):
    # Get the output filename by replacing .wav with .hex
    output_hex_path = os.path.splitext(input_wav_path)[0] + '.hex'

    # Open the WAV file
    with wave.open(input_wav_path, 'rb') as wav_file:
        # Get audio parameters
        n_channels = wav_file.getnchannels()
        sampwidth = wav_file.getsampwidth()
        framerate = wav_file.getframerate()
        n_frames = wav_file.getnframes()

        print(f"\nAudio Parameters:")
        print(f"Channels: {n_channels}")
        print(f"Sample Width: {sampwidth} bytes")
        print(f"Frame Rate: {framerate} Hz")
        print(f"Number of Frames: {n_frames}")
        print(f"Duration: {n_frames/framerate:.2f} seconds")

        # Read all frames
        audio_data = wav_file.readframes(wav_file.getnframes())
        print(f"\nRead {len(audio_data)} bytes from WAV file")

        # Convert bytes to numpy array based on sample width
        if sampwidth == 1:
            # 8-bit unsigned
            audio_array = np.frombuffer(audio_data, dtype=np.uint8)
            print("Input format: 8-bit unsigned PCM")
        elif sampwidth == 2:
            # 16-bit signed
            audio_array = np.frombuffer(audio_data, dtype=np.int16)
            print("Input format: 16-bit signed PCM")
        else:
            raise ValueError(f"Unsupported sample width: {sampwidth} bytes")

        # Reshape array if multiple channels and keep only first channel
        if n_channels > 1:
            original_samples = len(audio_array)
            audio_array = audio_array.reshape(-1, n_channels)
            print(f"Converting from {n_channels} channels to mono (mixing channels)")
            # Average all channels
            audio_array = np.mean(audio_array, axis=1)
            print(f"Samples reduced from {original_samples} to {len(audio_array)}")

        # Resample to 8000 Hz if needed
        if framerate != 8000:
            print(f"Resampling from {framerate} Hz to 8000 Hz")
            # Calculate number of samples for 8000 Hz
            original_samples = len(audio_array)
            num_samples = int(len(audio_array) * 8000 / framerate)
            audio_array = signal.resample(audio_array, num_samples)
            print(f"Samples changed from {original_samples} to {num_samples}")

        # Convert to 8-bit unsigned
        if sampwidth == 2:
            print("Converting 16-bit signed PCM to 8-bit unsigned PCM")
            audio_array = audio_array.astype(np.int32)
            audio_array = ((audio_array + 32768) * 255 / 65535).astype(np.uint8)

    # Write the hex data to the output file
    output_bytes = audio_array.tobytes()
    with open(output_hex_path, 'w') as hex_file:
        # Convert bytes to hex with formatting
        for i, byte in enumerate(output_bytes):
            # Add space between bytes
            hex_file.write(f'{byte:02x} ')
            # Add newline after every 32 bytes
            if (i + 1) % 32 == 0:
                hex_file.write('\n')
        # Add final newline if the last line is not complete
        if len(output_bytes) % 32 != 0:
            hex_file.write('\n')

    print(f"\nOutput Summary:")
    print(f"Written {len(output_bytes)} bytes to {output_hex_path}")
    print(f"Final format: 8-bit unsigned PCM, 8000 Hz")

def wav_to_c_header(input_wav_path):
    # Get the output filename by replacing .wav with .h
    output_header_path = os.path.splitext(input_wav_path)[0] + '.h'

    # Get the array name from the filename
    array_name = os.path.splitext(os.path.basename(input_wav_path))[0].replace('-', '_')

    # Open the WAV file
    with wave.open(input_wav_path, 'rb') as wav_file:
        # Get audio parameters
        n_channels = wav_file.getnchannels()
        sampwidth = wav_file.getsampwidth()
        framerate = wav_file.getframerate()
        n_frames = wav_file.getnframes()

        print(f"\nAudio Parameters:")
        print(f"Channels: {n_channels}")
        print(f"Sample Width: {sampwidth} bytes")
        print(f"Frame Rate: {framerate} Hz")
        print(f"Number of Frames: {n_frames}")
        print(f"Duration: {n_frames/framerate:.2f} seconds")

        # Read all frames
        audio_data = wav_file.readframes(wav_file.getnframes())
        print(f"\nRead {len(audio_data)} bytes from WAV file")

        # Convert bytes to numpy array based on sample width
        if sampwidth == 1:
            # 8-bit unsigned
            audio_array = np.frombuffer(audio_data, dtype=np.uint8)
            print("Input format: 8-bit unsigned PCM")
        elif sampwidth == 2:
            # 16-bit signed
            audio_array = np.frombuffer(audio_data, dtype=np.int16)
            print("Input format: 16-bit signed PCM")
        else:
            raise ValueError(f"Unsupported sample width: {sampwidth} bytes")

        # Reshape array if multiple channels and keep only first channel
        if n_channels > 1:
            original_samples = len(audio_array)
            audio_array = audio_array.reshape(-1, n_channels)
            print(f"Converting from {n_channels} channels to mono (mixing channels)")
            # Average all channels
            audio_array = np.mean(audio_array, axis=1)
            print(f"Samples reduced from {original_samples} to {len(audio_array)}")

        # Resample to 8000 Hz if needed
        if framerate != 8000:
            print(f"Resampling from {framerate} Hz to 8000 Hz")
            # Calculate number of samples for 8000 Hz
            original_samples = len(audio_array)
            num_samples = int(len(audio_array) * 8000 / framerate)
            audio_array = signal.resample(audio_array, num_samples)
            print(f"Samples changed from {original_samples} to {num_samples}")

        # Convert to 8-bit unsigned
        if sampwidth == 2:
            print("Converting 16-bit signed PCM to 8-bit unsigned PCM")
            audio_array = audio_array.astype(np.int32)
            audio_array = ((audio_array + 32768) * 255 / 65535).astype(np.uint8)

    # Write the C header file
    with open(output_header_path, 'w') as header_file:
        # Write header guard
        header_file.write(f"#ifndef {array_name.upper()}_H\n")
        header_file.write(f"#define {array_name.upper()}_H\n\n")

        # Write array declaration
        header_file.write(f"const unsigned char {array_name}[] = {{\n")

        # Write array data
        for i, byte in enumerate(audio_array):
            # Add comma and space between bytes
            header_file.write(f"0x{byte:02x}, ")
            # Add newline after every 16 bytes
            if (i + 1) % 16 == 0:
                header_file.write('\n')

        # Write array size
        header_file.write(f"\n}};\n")
        header_file.write(f"const unsigned int {array_name}_size = {len(audio_array)};\n\n")

        # Close header guard
        header_file.write(f"#endif // {array_name.upper()}_H\n")

    print(f"\nOutput Summary:")
    print(f"Written {len(audio_array)} bytes to {output_header_path}")
    print(f"Final format: 8-bit unsigned PCM, 8000 Hz")
    print(f"Array name: {array_name}")
    print(f"Array size: {len(audio_array)} bytes")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python wav_to_hex.py [--c-header] [-d] <input_file>")
        print("  --c-header: Generate C header file instead of hex file")
        print("  -d: Decode hex file back to WAV (input must be hex file)")
        sys.exit(1)

    # Check for arguments
    generate_header = "--c-header" in sys.argv
    decode_mode = "-d" in sys.argv

    # Remove processed arguments
    if generate_header:
        sys.argv.remove("--c-header")
    if decode_mode:
        sys.argv.remove("-d")

    input_file = sys.argv[1]
    print(f"Processing file: {input_file}")

    try:
        if decode_mode:
            hex_to_wav(input_file)
        elif generate_header:
            wav_to_c_header(input_file)
        else:
            wav_to_hex(input_file)
        print("\nConversion completed successfully!")
    except Exception as e:
        print(f"\nError occurred: {str(e)}")