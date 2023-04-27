import configparser

def FuzzerRunOne(FuzzerInput):
    parser = configparser.ConfigParser(allow_no_value=True, strict=False)
    try:
        parser.read_string(FuzzerInput.decode("utf-8", "replace"))
        list(parser.items())
    except configparser.Error:
        return

