
# Face Detection using Python

## Project Overview

This project implements a **real-time face detection** system using Python, OpenCV, and Haar cascades. The system utilizes the webcam to capture video frames, detect faces, and highlight the detected faces with bounding boxes. The system is designed to run cross-platform on **Windows**, **Linux**, and **macOS**, making it easily accessible to a broad audience.

The face detection process uses OpenCV's pre-trained Haar Cascade model (`haarcascade_frontalface_default.xml`). Additionally, the system includes features such as real-time FPS (frames per second) display, face count, and the ability to toggle between grayscale and color video feeds.

This project can be extended to other facial recognition tasks, like tracking multiple faces or integrating deep learning-based face detection methods like DNN (Deep Neural Networks) for better accuracy.

--- 

## Features

- **Real-Time Face Detection**: Detect faces in live video streams.
- **Cross-Platform Compatibility**: Works on Windows, Linux, and macOS.
- **FPS Display**: Displays the frames per second (FPS) of the video feed.
- **Face Count**: Shows the number of faces detected in the current frame.
- **Toggle Grayscale**: Option to toggle between grayscale and color video feeds.
- **Efficient Video Capture**: Uses webcam video capture for real-time face detection.

---

## Project File Structure

```
Face-Detection/
│
├── code.py                         # Main Python script for face detection
├── requirements.txt                # Dependencies for the project
├── setup.sh                        # Setup script for Linux/macOS systems
├── setup.bat                       # Setup script for Windows systems
├── haarcascade_frontalface_default.xml  # Pre-trained Haar Cascade model
└── README.md                       # Detailed documentation of the project
```

---

## Dependencies

Before running the project, ensure you have the necessary libraries and dependencies installed. The following libraries are required:

- **OpenCV**: Open Source Computer Vision Library
- **NumPy**: A fundamental package for scientific computing
- **time**: Standard Python library for time-related functions

### `requirements.txt`

```txt
opencv-python==4.9.0
numpy==1.24.2
```

---

## Platform-Specific Setup Instructions

### Windows Setup (`setup.bat`)

To set up the project on Windows, follow these steps:

1. **Clone the Repository**:
   - Open **Command Prompt** or **PowerShell** and run:
     ```sh
     git clone https://github.com/samnaveenkumaroff/Face-Detection-using-Python.git
     ```

2. **Run the `setup.bat` Script**:
   - Navigate to the project directory and run the `setup.bat` script. This will:
     - Create a virtual environment
     - Install the required dependencies
   ```sh
   setup.bat
   ```

3. **Activate the Virtual Environment**:
   - After running the script, activate the virtual environment:
     ```sh
     .\venv\Scripts\activate
     ```

4. **Run the Application**:
   - Start the Python script:
     ```sh
     python code.py
     ```

### Linux/macOS Setup (`setup.sh`)

To set up the project on Linux or macOS, follow these steps:

1. **Clone the Repository**:
   - Open the terminal and run:
     ```sh
     git clone https://github.com/samnaveenkumaroff/Face-Detection-using-Python.git
     ```

2. **Run the `setup.sh` Script**:
   - Navigate to the project directory and run the `setup.sh` script. This will:
     - Create a virtual environment
     - Install the required dependencies
   ```sh
   bash setup.sh
   ```

3. **Activate the Virtual Environment**:
   - After running the script, activate the virtual environment:
     ```sh
     source venv/bin/activate
     ```

4. **Run the Application**:
   - Start the Python script:
     ```sh
     python code.py
     ```

---

## Usage Instructions

1. **Launching the Application**:
   - Once the environment is set up and dependencies are installed, simply run the `code.py` script to launch the face detection system.
     ```sh
     python code.py
     ```

2. **Using the Application**:
   - The application will open a webcam feed in a window showing real-time video.
   - **Face Detection**: The system will automatically detect faces and draw green rectangles around the detected faces.
   - **FPS Display**: Displays the frames per second (FPS) on the top-left of the video feed.
   - **Face Count**: The number of detected faces will be displayed at the bottom-left of the video feed.
   - **Toggle Grayscale**: Press the `G` key to toggle between the grayscale and color video feed.
   - **Exit**: Press the `Q` key to exit the program.

---

## Code Explanation

- **Haar Cascade Classifier**: The project uses a pre-trained Haar Cascade model (`haarcascade_frontalface_default.xml`) from OpenCV to perform face detection.
- **Video Capture**: The webcam feed is captured using OpenCV’s `cv2.VideoCapture(0)` method.
- **Real-Time FPS Calculation**: The frames per second (FPS) are calculated by measuring the time difference between two consecutive frames.
- **Face Detection**: Faces are detected using `cv2.CascadeClassifier.detectMultiScale()` function, which identifies objects (in this case, faces) in the image.
- **Grayscale Toggle**: Grayscale images are used for face detection as they generally provide better results. Press the `G` key to toggle the video feed between grayscale and color.

---

## Troubleshooting

- **Error: "Cannot access webcam"**:
  - Ensure that the webcam is not being used by another application.
  - Check if the webcam is properly connected and accessible.

- **Error: "Failed to load face cascade"**:
  - Ensure that the Haar Cascade model file (`haarcascade_frontalface_default.xml`) is located in the correct directory.

- **Error: "ModuleNotFoundError"**:
  - Ensure that you have activated the virtual environment and installed all required dependencies using:
    ```sh
    pip install -r requirements.txt
    ```

---

## Contributing

Contributions are welcome! If you'd like to contribute to the project, feel free to fork this repository, create a new branch, and submit a pull request with your changes. Here are a few ways you can contribute:

- **Bug Fixes**: Report and fix bugs in the current implementation.
- **Enhancements**: Add new features like face tracking, recognition, or integration with deep learning models.
- **Code Refactoring**: Help improve code readability, performance, and maintainability.

Please ensure your changes are well-documented and tested.

---

## License

This project is licensed under the **Apache License 2.0** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- OpenCV for providing the face detection model and library.
- Python and NumPy for being essential dependencies in machine learning and computer vision.
- All contributors to this project.

---

## Credits

**Author**: [Sam Naveenkumar V](https://www.linkedin.com/in/samnaveenkumaroff)  
**Email**: [samnaveenkumaroff@gmail.com](mailto:samnaveenkumaroff@gmail.com)  
**GitHub**: [@samnaveenkumaroff](https://github.com/samnaveenkumaroff)

---
