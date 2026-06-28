#!/bin/bash
echo "============================="
echo "ReceiptScanner Mac Build"
echo "============================="

if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing Tesseract..."
brew install tesseract

echo "Installing Python dependencies..."
pip3 install pyqt5 opencv-python pillow pytesseract openpyxl pyinstaller

echo "Updating Tesseract path..."
sed -i "" "s|C:\\\\Program Files\\\\Tesseract-OCR\\\\tesseract.exe|/usr/local/bin/tesseract|g" receipt_scanner.py

echo "Building Mac app..."
python3 -m PyInstaller --onefile --windowed --icon=assets/icon.icns --name=ReceiptScanner receipt_scanner.py

echo "Done! Your app is in the dist folder."
