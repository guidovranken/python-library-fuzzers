import tomllib

def FuzzerRunOne(FuzzerInput):
    try:
        tomllib.loads(FuzzerInput.decode("utf-8", "replace"))
    except tomllib.TOMLDecodeError:
        return

