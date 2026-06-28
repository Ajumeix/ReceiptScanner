# ReceiptScanner

ReceiptScanner is a free, fully local desktop app to scan receipts, extract VAT TIN and totals using OCR, and export to Excel. No internet required. No data leaves your machine.

## Quick start

### Windows
git clone https://github.com/Ajumeix/ReceiptScanner.git

cd ReceiptScanner

cmd /c setup.bat

### Mac / Linux
git clone https://github.com/Ajumeix/ReceiptScanner.git

cd ReceiptScanner

bash setup.sh

## Download ZIP from GitHub

1. Open the ReceiptScanner repository on GitHub
2. Click **Code**
3. Click **Download ZIP**
4. Extract the ZIP
5. Open terminal inside the extracted folder
6. Run:

### Windows
cmd /c setup.bat

### Mac / Linux
bash setup.sh

The setup script automatically installs all dependencies and launches the app.

## Build as a native app

### Windows — builds a standalone .exe
cmd /c build_windows.bat
Output: `dist/ReceiptScanner.exe`

### Mac — builds a .app bundle
bash build_mac.sh
Output: `dist/ReceiptScanner`

### Linux — builds executable + installs app launcher
bash build_linux.sh
Output: `dist/ReceiptScanner` + searchable from your app menu as `ReceiptScanner`

## Required

- Python 3.11+
- Tesseract OCR
  - **Windows**: download from https://github.com/UB-Mannheim/tesseract/wiki and install using default path
  - **Mac**: installed automatically via Homebrew in setup.sh
  - **Linux**: installed automatically via apt in setup.sh

## Usage

1. Click **Import Receipts** to load one or more receipt images
2. Navigate between images with **Prev / Next** buttons
3. Fields auto-fill from OCR scan — edit if needed
4. Use **Pick Area** next to VAT or Total to manually select a region on the image
5. Press **Enter** or click **Add to Batch** to add to batch
6. Repeat for all receipts
7. Click **Export to Excel** to save

## Output

Exports a `.xlsx` file with two sheets:

- **Receipt Data** — Date, Particulars, VAT REG TIN, Solo/Shared, Total
- **Receipt Images** — embedded receipt photos for reference

## Settings

- Dark / Light mode toggle
- Custom Particulars dropdown list
- Default save directory
- Batch warning threshold
- Filename template with `{date}` and `{n}` placeholders

## Required packages

- Python 3.11+
- PyQt5
- opencv-python
- Pillow
- pytesseract
- openpyxl
- Tesseract OCR

Supported package managers in setup scripts:

- apt (Ubuntu / Debian / Linux Mint)
- Homebrew (Mac)
