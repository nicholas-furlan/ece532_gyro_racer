#!/usr/bin/env python3
import sys
from PIL import Image
import numpy as np
import os
import traceback

def convert_to_rgba4444(image_path):
    # Open the image
    img = Image.open(image_path)

    # Convert to RGBA if not already
    if img.mode != 'RGBA':
        img = img.convert('RGBA')

    # Get image dimensions
    width, height = img.size

    # Convert to numpy array for easier manipulation
    img_array = np.array(img)

    # Create output array
    output_array = np.zeros((height, width), dtype=np.uint16)

    # Process each pixel
    for y in range(height):
        for x in range(width):
            r, g, b, a = img_array[y, x]

            # Convert alpha to binary (0 or F)
            alpha = 0x0 if a < 128 else 0xF

            # Convert RGB to 4-bit each and ensure we stay within bounds
            r = int((r >> 4) & 0xF)
            g = int((g >> 4) & 0xF)
            b = int((b >> 4) & 0xF)
            
            # Combine into 16-bit RGBA4444 using uint16 to prevent overflow
            pixel = np.uint16(r) + np.uint16(g << 4) + np.uint16(b << 8) + np.uint16(alpha << 12)
            output_array[y, x] = pixel

    return output_array, width, height

def generate_cpp_header(array, width, height, output_file, input_file):
    # Get the base name without extension and path
    base_name = os.path.splitext(os.path.basename(input_file))[0]
    # Add prefix
    base_name = "img_" + base_name

    # Convert to uppercase and replace non-alphanumeric chars with underscore
    guard_name = ''.join(c.upper() if c.isalnum() else '_' for c in base_name)

    with open(output_file, 'w') as f:
        # Write header guard
        f.write(f"#ifndef {guard_name}_H\n")
        f.write(f"#define {guard_name}_H\n\n")

        # Include stdint.h for uint16_t
        f.write("#include <stdint.h>\n\n")

        # Write array dimensions
        f.write(f"#define {guard_name}_WIDTH {width}\n")
        f.write(f"#define {guard_name}_HEIGHT {height}\n\n")

        # Write array definition
        f.write(f"const uint16_t {base_name}_data[{guard_name}_HEIGHT][{guard_name}_WIDTH] = {{\n")

        # Write array data
        for y in range(height):
            f.write("    {")
            for x in range(width):
                f.write(f"0x{array[y, x]:04X}")
                if x < width - 1:
                    f.write(", ")
                if (x + 1) % 16 == 0 and x < width - 1:
                    f.write("\n        ")
            f.write("},\n")

        f.write("};\n\n")
        f.write(f"#endif // {guard_name}_H\n")

def main():
    if len(sys.argv) != 2:
        print("Usage: python picture_to_header.py <input_image>")
        print("Output header will be generated with the same name as input image (with .h extension)")
        sys.exit(1)

    input_image = sys.argv[1]
    # Generate output header name from input image
    output_header = os.path.splitext(input_image)[0] + ".h"

    try:
        array, width, height = convert_to_rgba4444(input_image)
        generate_cpp_header(array, width, height, output_header, input_image)
        print(f"Successfully converted {input_image} to {output_header}")
    except Exception as e:
        print(f"Error: {str(e)}")
        print("\nStack trace:")
        traceback.print_exc()
        sys.exit(1)

if __name__ == "__main__":
    main()
