import ast

def FuzzerRunOne(FuzzerInput):
    # Python documentation states:
    # 
    # 'It is possible to crash the Python interpreter with a sufficiently
    # large/complex string due to stack depth limitations in Python’s AST
    # compiler.'
    if len(FuzzerInput) > 4096:
        return

    try:
        ast.parse(FuzzerInput)
    except:
        pass
