import numpy as np
import cv2

def bindSensor(sensor):
    sensor.listen(lambda _image: do_something(_image))

def do_something(_image):
    global array
    data = np.frombuffer(_image.raw_data, dtype=np.dtype("uint8"))

    # Convert to depth in meters
    data = np.reshape(data, (_image.height, _image.width, 4))
    B = data[:, :, 0].astype("float64")
    G = data[:, :, 1].astype("float64")
    R = data[:, :, 2].astype("float64")

    data = 1000 * (R + G * 256 + B * 256 * 256) / (256 * 256 * 256 - 1)

    # Convert the data into MATLAB cast compatible type
    array = np.ascontiguousarray(data)
