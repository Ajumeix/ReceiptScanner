#!/bin/bash
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
    sed -i "" "s|C:\\Program Files\\Tesseract-OCR\\tesseract.exe|/usr/local/bin/tesseract|g" receipt_scanner.py
else
    echo "Linux detected..."
    sudo apt-get update -qq
    sudo apt-get install -y tesseract-ocr
    sed -i "s|C:\\Program Files\\Tesseract-OCR\\tesseract.exe|/usr/bin/tesseract|g" receipt_scanner.py
fi

echo "Installing Python dependencies..."
pip3 install pyqt5 opencv-python pillow pytesseract openpyxl

echo "Setup complete! Starting ReceiptScanner..."
python3 receipt_scanner.py
