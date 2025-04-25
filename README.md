# PNG Resizer

A simple tool to resize PNG images while maintaining their quality. This repository contains both a Python script and a shell script implementation.

## Features

- Resize PNG images to specified dimensions
- Maintain image quality
- Support for both Python and shell script implementations
- Raycast-ready shell script for quick access

## Usage

### Python Script

```bash
python png_resizer.py <input_file>
```

### Shell Script

```bash
./resize-png.sh <input_file>
```

## Requirements

- Python 3.x (for the Python script)

## Installation

1. Clone this repository
2. Make the shell script executable:
   ```bash
   chmod +x resize-png.sh
   ```

## Raycast Integration

The shell script is designed to work seamlessly with Raycast. You can add it as a custom script in Raycast to quickly resize PNG files from anywhere on your system.

## MacOS Tip

To copy the full path of a file in MacOS:

1. Select the file in Finder
2. Press `CMD + Option + C`
3. The full path will be copied to your clipboard
4. You can now paste it anywhere using `CMD + V`

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
