from http import client
import io

class Sock(object):
    def __init__(self, data):
        self.data = data
    def makefile(self, mode):
        return io.BytesIO(self.data)

def FuzzerRunOne(FuzzerInput):
    response = client.HTTPResponse(Sock(FuzzerInput))
    try:
        response.begin()
    except:
        pass

