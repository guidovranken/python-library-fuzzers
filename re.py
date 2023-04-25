import re

def FuzzerRunOne(FuzzerInput):
    try:
        re.purge()
        re.compile(FuzzerInput.decode("utf-8", "replace"), re.IGNORECASE | re.MULTILINE | re.VERBOSE)
    except re.error:
        return

