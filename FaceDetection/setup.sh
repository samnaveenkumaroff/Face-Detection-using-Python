#!/bin/bash

echo "========================================"
echo "   FACE DETECTION SETUP STARTING..."
echo "========================================"

# Step 1: Create virtual environment if not exists
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo "✅ Virtual environment created."
else
    echo "ℹ️  Virtual environment already exists."
fi

# Step 2: Activate the virtual environment
source venv/bin/activate
echo "✅ Virtual environment activated."

# Step 3: Upgrade pip to the latest version
python -m pip install --upgrade pip

# Step 4: Install required packages
echo "📦 Installing dependencies..."
pip install numpy<2.0 opencv-python==4.9.0.80

# Step 5: Clone the GitHub repository (if not already cloned)
if [ ! -d "Face-Detection-using-Python" ]; then
    git clone https://github.com/samnaveenkumaroff/Face-Detection-using-Python.git
    echo "✅ Repo cloned."
else
    echo "⚠️ Repo already exists. Skipping clone."
fi

# Step 6: Move into the folder and run the Python script
cd Face-Detection-using-Python

# Check for Code.py and run it
if [ -f "Code.py" ]; then
    echo "🚀 Running Face Detection..."
    python Code.py
else
    echo "❌ Code.py not found in the repo."
fi

# Step 7: Pause for review
echo "Setup complete. Press any key to exit."
read -n 1
