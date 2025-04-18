@echo off
echo ========================================
echo   FACE DETECTION SETUP STARTING...
echo ========================================

REM Step 1: Create virtual environment
python -m venv venv
echo ✅ Virtual environment created.

REM Step 2: Activate the virtual environment
call venv\Scripts\activate.bat
echo ✅ Virtual environment activated.

REM Step 3: Upgrade pip
python -m pip install --upgrade pip

REM Step 4: Install required packages
pip install numpy<2.0 opencv-python==4.9.0.80

REM Step 5: Clone the GitHub repository (if not already cloned)
if not exist "Face-Detection-using-Python" (
    git clone https://github.com/samnaveenkumaroff/Face-Detection-using-Python.git
    echo ✅ Repo cloned.
) else (
    echo ⚠️ Repo already exists. Skipping clone.
)

REM Step 6: Move into the folder and run the script
cd Face-Detection-using-Python

REM Check for Code.py and run
if exist "Code.py" (
    echo 🚀 Running Face Detection...
    python Code.py
) else (
    echo ❌ Code.py not found in the repo.
)

pause
