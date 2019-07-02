from email.parser import BytesParser, Parser
from email.policy import default, HTTP

def FuzzerRunOne(FuzzerInput):
    try:
        Parser(policy=HTTP).parsestr(FuzzerInput.decode("utf-8", "replace"))
    #    #Parser(policy=default).parsestr(FuzzerInput.decode("utf-8", "replace"))
    except:
        pass

