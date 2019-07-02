import urllib.robotparser
from urllib.parse import urlparse
from html.parser import HTMLParser

class MyHTMLParser(HTMLParser):
    def handle_starttag(self, tag, attrs):
        pass

    def handle_endtag(self, tag):
        pass

    def handle_data(self, data):
        pass


def FuzzerRunOne(FuzzerInput):
    parser = MyHTMLParser()
    try:
        parser.feed(FuzzerInput.decode("utf-8", "replace"))
    except:
        pass
