import numpy as np

def bindSensor(sensor):
    sensor.listen(lambda _image: do_something(_image))

def do_something(_image):
    global array
    data = np.frombuffer(_image.raw_data, dtype=np.dtype("uint8"))

    # Convert to RGB from BGRA
    data = np.reshape(data, (_image.height, _image.width, 4))
    data = data[:, :, :3]
    data = data[:, :, ::-1]

    # Convert the data into MATLAB cast compatible type
    array = np.ascontiguousarray(data)
