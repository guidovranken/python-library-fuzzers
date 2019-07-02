import json

def FuzzerRunOne(FuzzerInput):
    try:
        obj = json.loads(FuzzerInput.decode("utf-8", "replace"))
    except json.decoder.JSONDecodeError:
        return
    except RecursionError:
        return
    except ValueError:
        return
    enc = json.dumps(obj)
    obj2 = json.loads(enc)

