@echo off
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
