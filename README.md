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

## Requirements

- Python 3.11 or higher
- Tesseract OCR (free, open source)

## Quick Start

### Windows

1. Install Python 3.11 from https://www.python.org/downloads/
2. Install Tesseract OCR from https://github.com/UB-Mannheim/tesseract/wiki
   - Use the default install path when prompted
3. Clone this repo:
git clone https://github.com/Ajumeix/ReceiptScanner.git

cd ReceiptScanner
4. Double click `setup.bat` — it installs all dependencies and launches the app automatically

### Mac

1. Install Python 3.11 from https://www.python.org/downloads/
2. Clone this repo:
git clone https://github.com/Ajumeix/ReceiptScanner.git

cd ReceiptScanner
3. Run setup:
bash setup.sh
   This installs Tesseract via Homebrew, all Python dependencies, and launches the app automatically.

### Linux

1. Clone this repo:
git clone https://github.com/Ajumeix/ReceiptScanner.git

cd ReceiptScanner
2. Run setup:
bash setup.sh
   This installs Tesseract via apt, all Python dependencies, and launches the app automatically.

## Usage

1. Click **Import Receipts** to load one or more receipt images
2. Navigate between images with **Prev / Next** buttons
3. Fields auto-fill from OCR scan — edit if needed
4. Use **Pick Area** button next to VAT or Total to manually select a region on the image
5. Click **Add to Batch** or press **Enter** to add receipt to batch
6. Repeat for all receipts
7. Click **Export to Excel** to save all receipts as a spreadsheet

## Settings

- Dark / Light mode toggle
- Custom Particulars dropdown list (add your own categories)
- Default save directory
- Batch warning threshold
- Filename template with `{date}` and `{n}` placeholders

## Output

Exports a `.xlsx` file with two sheets:
- **Receipt Data** — Date, Particulars, VAT REG TIN, Solo/Shared, Total
- **Receipt Images** — embedded receipt photos for reference

## License

MIT License — free to use, modify, and share.
