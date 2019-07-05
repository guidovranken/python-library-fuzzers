def FuzzerRunOne(FuzzerInput):
    l = int(len(FuzzerInput)/2)
    A = FuzzerInput[:l]
    B = FuzzerInput[l:].decode("utf-8", "replace").strip()
    try:
        A.decode(B)
    except:
        pass
