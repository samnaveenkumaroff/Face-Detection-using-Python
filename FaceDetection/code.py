import cv2
import time
#time module to Login in Attendance
# Initialize the face detection model, CascadeClassifier
face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_default.xml')

# Check if model is loaded
if face_cascade.empty():
    raise IOError("Failed to load face cascade classifier.")

# Start capturing video
cap = cv2.VideoCapture(0)

# Check if webcam is accessible
if not cap.isOpened():
    raise IOError("Cannot access webcam.")

show_gray = False
prev_time = time.time()

while True:
    ret, frame = cap.read()
    if not ret:
        print("Failed to grab frame.")
        break

    # Clone the original frame for output
    output = frame.copy()

    # Convert to grayscale and enhance contrast
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    gray = cv2.equalizeHist(gray)

    # Detect faces
    faces = face_cascade.detectMultiScale(
        gray, scaleFactor=1.1, minNeighbors=5, minSize=(30, 30)
    )

    # Draw face rectangles and label
    for (x, y, w, h) in faces:
        cv2.rectangle(output, (x, y), (x + w, y + h), (36, 255, 12), 2)
        cv2.putText(output, "Human", (x, y - 10), cv2.FONT_HERSHEY_SIMPLEX, 
                    0.6, (36, 255, 12), 2)

    # Calculate and display FPS
    curr_time = time.time()
    fps = 1 / (curr_time - prev_time)
    prev_time = curr_time
    cv2.putText(output, f"FPS: {int(fps)}", (10, 25), cv2.FONT_HERSHEY_SIMPLEX, 
                0.7, (0, 255, 255), 2)

    # Display face count
    cv2.putText(output, f"Faces: {len(faces)}", (10, 55), cv2.FONT_HERSHEY_SIMPLEX, 
                0.7, (255, 255, 0), 2)

    # Show frame (color or grayscale)
    if show_gray:
        display_frame = gray
    else:
        display_frame = output

    cv2.imshow('Face Detection', display_frame)

    # Keyboard controls
    key = cv2.waitKey(1) & 0xFF
    if key == ord('q') or cv2.getWindowProperty('Face Detection', cv2.WND_PROP_VISIBLE) < 1:
        break
    elif key == ord('g'):
        show_gray = not show_gray

# Clean up
cap.release()
cv2.destroyAllWindows()

