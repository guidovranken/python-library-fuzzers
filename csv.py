import csv

def FuzzerRunOne(FuzzerInput):
    lines = FuzzerInput.decode("utf-8", "replace").splitlines()
    try:
        reader = csv.reader(lines, delimiter=',')
        for row in reader:
            pass
    except csv.Error:
        pass
