#!/bin/bash
echo "============================="
echo "ReceiptScanner Linux Build"
echo "============================="

echo "Installing Tesseract..."
sudo apt-get update -qq
sudo apt-get install -y tesseract-ocr python3-pip

echo "Installing Python dependencies..."
pip3 install pyqt5 opencv-python pillow pytesseract openpyxl pyinstaller

echo "Updating Tesseract path..."
sed -i "s|C:\\\\Program Files\\\\Tesseract-OCR\\\\tesseract.exe|/usr/bin/tesseract|g" receipt_scanner.py

echo "Building Linux executable..."
python3 -m PyInstaller --onefile --windowed --icon=assets/icon.png --name=ReceiptScanner receipt_scanner.py

echo "Installing desktop launcher..."
mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/icons

cp assets/icon.png ~/.local/share/icons/receiptscanner.png

cat > ~/.local/share/applications/receiptscanner.desktop << EOF
[Desktop Entry]
Name=ReceiptScanner
Comment=Local receipt scanner with OCR and Excel export
Exec=$(pwd)/dist/ReceiptScanner
Icon=receiptscanner
Terminal=false
Type=Application
Categories=Office;Finance;
EOF

echo "Desktop launcher installed! Search ReceiptScanner in your app menu."
echo "Done! Your executable is in the dist folder."
