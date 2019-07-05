import difflib

def FuzzerRunOne(FuzzerInput):
    if len(FuzzerInput) == 0:
        return
    l = int(len(FuzzerInput)/2)
    A = FuzzerInput[:l].decode("utf-8", "replace").splitlines()
    B = FuzzerInput[l:].decode("utf-8", "replace").splitlines()
    for x in difflib.unified_diff(A, B):
        pass
    for x in difflib.context_diff(A, B):
        pass
    difflib.HtmlDiff().make_file(A, B)


