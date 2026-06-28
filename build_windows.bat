@echo off
echo =============================
echo ReceiptScanner Windows Build
echo =============================
echo.
echo Installing dependencies...
pip install pyqt5 opencv-python pillow pytesseract openpyxl pyinstaller
echo.
echo Building exe...
python -m PyInstaller --onefile --windowed --icon=assets\icon.ico --name=ReceiptScanner receipt_scanner.py
echo.
echo Done! Your exe is in the dist folder.
pause
