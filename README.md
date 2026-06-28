# ReceiptScanner

A free, fully local desktop app to scan receipts, extract VAT TIN and totals using OCR, and export to Excel. No internet required. No data leaves your machine.

![Python](https://img.shields.io/badge/Python-3.11+-blue)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Mac%20%7C%20Linux-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

## Features

- Import multiple receipt images at once
- Auto-extracts VAT REG TIN, Total, and Date via OCR
- Pick Area tool — manually select any region on the image to scan
- Batch processing — process multiple receipts and export together
- Export to Excel with data sheet and receipt images sheet
- Dark / Light mode toggle
- Fully local — no internet, no API keys, no subscriptions

## Screenshots

> Import receipts, review extracted data, export to Excel

## Requirements

- Python 3.11 or higher
- Tesseract OCR (free, open source)

## Installation

### Windows

1. Install Python 3.11 from https://www.python.org/downloads/
2. Install Tesseract OCR from https://github.com/UB-Mannheim/tesseract/wiki
   - Use default install path: `C:\Program Files\Tesseract-OCR\`
3. Clone this repo:
git clone https://github.com/Ajumeix/ReceiptScanner.git

cd ReceiptScanner
4. Run the app:
run.bat

### Mac

1. Install Python 3.11 from https://www.python.org/downloads/
2. Install Tesseract via Homebrew:
brew install tesseract
3. Clone this repo:
git clone https://github.com/Ajumeix/ReceiptScanner.git

cd ReceiptScanner
4. Run the app:
bash run.sh
   
   > Note: On Mac, update the tesseract path in `receipt_scanner.py` line 14:
   > ```python
   > pytesseract.pytesseract.tesseract_cmd = '/usr/local/bin/tesseract'
   > ```

### Linux

1. Install Python 3.11 and Tesseract:
sudo apt update

sudo apt install python3.11 tesseract-ocr
2. Clone this repo:
git clone https://github.com/Ajumeix/ReceiptScanner.git

cd ReceiptScanner
3. Run the app:
bash run.sh
   
   > Note: On Linux, update the tesseract path in `receipt_scanner.py` line 14:
   > ```python
   > pytesseract.pytesseract.tesseract_cmd = '/usr/bin/tesseract'
   > ```

## Manual Dependency Install
pip install pyqt5 opencv-python pillow pytesseract openpyxl

## Usage

1. Click **Import Receipts** to load one or more receipt images
2. Navigate images with **Prev / Next** buttons
3. Fields auto-fill from OCR scan — edit if needed
4. Use **Pick Area** button next to VAT or Total to manually select a region
5. Click **Add to Batch** or press **Enter** to add to batch
6. Repeat for all receipts
7. Click **Export to Excel** to save

## Settings

- Dark / Light mode toggle
- Custom Particulars dropdown list
- Default save directory
- Batch warning threshold
- Filename template with `{date}` and `{n}` placeholders

## License

MIT License — free to use, modify, and share.
