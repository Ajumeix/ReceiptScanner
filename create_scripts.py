setup_bat = r"""@echo off
echo =============================
echo ReceiptScanner Setup
echo =============================
echo.
echo Installing Python dependencies...
pip install pyqt5 opencv-python pillow pytesseract openpyxl
echo.
echo Checking Tesseract...
IF EXIST "C:\Program Files\Tesseract-OCR\tesseract.exe" (
    echo Tesseract found!
) ELSE (
    echo Tesseract NOT found.
    echo Please download and install from:
    echo https://github.com/UB-Mannheim/tesseract/wiki
    echo Then run setup.bat again.
    pause
    exit
)
echo.
echo Setup complete! Starting ReceiptScanner...
python receipt_scanner.py
pause
"""

setup_sh = """#!/bin/bash
echo "============================="
echo "ReceiptScanner Setup"
echo "============================="

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Mac detected..."
    if ! command -v brew &> /dev/null; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    brew install tesseract
    sed -i "" "s|C:\\\\Program Files\\\\Tesseract-OCR\\\\tesseract.exe|/usr/local/bin/tesseract|g" receipt_scanner.py
else
    echo "Linux detected..."
    sudo apt-get update -qq
    sudo apt-get install -y tesseract-ocr
    sed -i "s|C:\\\\Program Files\\\\Tesseract-OCR\\\\tesseract.exe|/usr/bin/tesseract|g" receipt_scanner.py
fi

echo "Installing Python dependencies..."
pip3 install pyqt5 opencv-python pillow pytesseract openpyxl

echo "Setup complete! Starting ReceiptScanner..."
python3 receipt_scanner.py
"""

with open('setup.bat', 'w', newline='\r\n') as f:
    f.write(setup_bat)

with open('setup.sh', 'w', newline='\n') as f:
    f.write(setup_sh)

print("setup.bat and setup.sh created!")
