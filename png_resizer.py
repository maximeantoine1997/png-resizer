from PIL import Image
import os
import sys


def resize_image(input_path):
    try:
        # Open the image
        with Image.open(input_path) as img:
            # Get the filename without extension
            filename = os.path.splitext(input_path)[0]

            # Resize to 32x32
            img_32 = img.resize((32, 32), Image.Resampling.LANCZOS)
            img_32.save(f"{filename}_32x32.png")

            # Resize to 256x256
            img_256 = img.resize((256, 256), Image.Resampling.LANCZOS)
            img_256.save(f"{filename}_256x256.png")

            print(f"Successfully resized {input_path} to 32x32 and 256x256")

    except Exception as e:
        print(f"Error processing {input_path}: {str(e)}")


def main():
    if len(sys.argv) != 2:
        print("Usage: python png_resizer.py <input_png_file>")
        sys.exit(1)

    input_file = sys.argv[1]
    if not input_file.lower().endswith(".png"):
        print("Error: Input file must be a PNG file")
        sys.exit(1)

    if not os.path.exists(input_file):
        print(f"Error: File {input_file} does not exist")
        sys.exit(1)

    resize_image(input_file)


if __name__ == "__main__":
    main()
