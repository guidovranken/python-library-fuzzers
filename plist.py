import plistlib

def FuzzerRunOne(FuzzerInput):
    try:
        data = plistlib.loads(FuzzerInput)
    except plistlib.InvalidFileException:
        return

    try:
        plistlib.dumps(data, skipkeys=True, fmt=plistlib.FMT_XML)
        plistlib.dumps(data, skipkeys=True, fmt=plistlib.FMT_BINARY)
    except TypeError:
        return
    except OverflowError:
        return

