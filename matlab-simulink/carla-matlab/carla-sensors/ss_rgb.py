import numpy as np
from collections import defaultdict

# Converts the tags to human observable colors
_mapDict = defaultdict(lambda: (255, 255, 255), {
    0: (0, 0, 0),
    0: (0, 0, 0),
    1: (70, 70, 70),
    2: (100, 40, 40),
    3: (55, 90, 80),
    4: (220, 20, 60),
    5: (153, 153, 153),
    6: (157, 234, 50),
    7: (128, 64, 128),
    8: (244, 35, 232),
    9: (107, 142, 35),
    10: (0, 0, 142),
    11: (102, 102, 156),
    12: (220, 220, 0),
    13: (70, 130, 180),
    14: (81, 0, 81),
    15: (150, 100, 100),
    16: (230, 150, 140),
    17: (180, 165, 180),
    18: (250, 170, 30),
    19: (110, 190, 160),
    20: (170, 120, 50),
    21: (45, 60, 150),
    22: (145, 170, 100),
})

def _setup_mapping():
    global _mapDict
    global _mapping_array

    tags = np.array(list(_mapDict.keys()))
    colors = np.array(list(_mapDict.values()))

    _mapping_array = np.zeros((tags.max()+1, 3), dtype="uint8")
    _mapping_array[tags] = colors

def bindSensor(sensor):
    _setup_mapping()
    sensor.listen(lambda _image: do_something(_image))

def do_something(_image):
    global array
    global _mapping_array

    data = np.frombuffer(_image.raw_data, dtype=np.dtype("uint8"))

    # Get the red channel which has the tags
    data = np.reshape(data, (_image.height, _image.width, 4))
    data = data[:, :, 2]

    # Map the tags to their respective RGB colors
    data = _mapping_array[data]

    # Convert the data into MATLAB cast compatible type
    array = np.ascontiguousarray(data)
