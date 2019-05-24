from burp import IBurpExtender
from burp import IHttpListener
from burp import IExtensionHelpers
from java.io import PrintWriter
from java.lang import RuntimeException
import binascii
import base64
import re

class BurpExtender(IBurpExtender, IHttpListener):
    
    #
    # implement IBurpExtender
    #
    
    def	registerExtenderCallbacks(self, callbacks):
        # set our extension name
        callbacks.setExtensionName("My extension")
        
        # obtain our output stream
        self.stdout = PrintWriter(callbacks.getStdout(), True)
        
        # obtain an extension helpers object
        self.helpers = callbacks.getHelpers()
        
        # register ourselves as an HTTP listener
        callbacks.registerHttpListener(self)

    #
    # implement IHttpListener
    #

    def	processHttpMessage(self, toolFlag, messageIsRequest, messageInfo):
        try:
            if messageIsRequest:
#                 self.stdout.println(self.helpers.analyzeRequest(messageInfo.getRequest()).getUrl())
                pass
            else:
                mime_types=['script']
                mime_type=self.helpers.analyzeResponse(messageInfo.getResponse()).getStatedMimeType()
                self.stdout.println(mime_type)
                if mime_type.encode('ascii').lower() in mime_types:
                    encoded_resp=binascii.b2a_base64(messageInfo.getResponse())
                    decoded_resp=base64.b64decode(encoded_resp).decode('utf-8')
                    self.stdout.println(type(decoded_resp))
                    endpoints=self.parser_file(self, decoded_resp.encode('ascii'), self.regex_str)
                    for counter, endpoint in enumerate(endpoints):
                        self.stdout.println(counter,' - ', endpoint['link'])
        except Exception as e:
                    self.stdout.println('***** exception ***********')
                    self.stdout.println(e)
           
    def	parser_file(self, content, regex_str, mode=1, more_regex=None, no_dup=1):
        regex = re.compile(re.escape(regex_str), re.VERBOSE)
        items = [{"link": m.group(1)} for m in re.finditer(regex, content)]
    
        if no_dup:
            # Remove duplication
            all_links = set()
            no_dup_items = []
            for item in items:
                if item["link"] not in all_links:
                    all_links.add(item["link"])
                    no_dup_items.append(item)
            items = no_dup_items
    
        # Match Regex
        filtered_items = []
        for item in items:
            # Remove other capture groups from regex results
            if more_regex:
                if re.search(more_regex, item["link"]):
                    filtered_items.append(item)
            else:
                filtered_items.append(item)
        print(filtered_items)
        return filtered_items

    regex_str = r"""
    
      (?:"|')                               # Start newline delimiter
    
      (
        ((?:[a-zA-Z]{1,10}://|//)           # Match a scheme [a-Z]*1-10 or //
        [^"'/]{1,}\.                        # Match a domainname (any character + dot)
        [a-zA-Z]{2,}[^"']{0,})              # The domainextension and/or path
    
        |
    
        ((?:/|\.\./|\./)                    # Start with /,../,./
        [^"'><,;| *()(%%$^/\\\[\]]          # Next character can't be...
        [^"'><,;|()]{1,})                   # Rest of the characters can't be
    
        |
    
        ([a-zA-Z0-9_\-/]{1,}/               # Relative endpoint with /
        [a-zA-Z0-9_\-/]{1,}                 # Resource name
        \.(?:[a-zA-Z]{1,4}|action)          # Rest + extension (length 1-4 or action)
        (?:[\?|/][^"|']{0,}|))              # ? mark with parameters
    
        |
    
        ([a-zA-Z0-9_\-]{1,}                 # filename
        \.(?:php|asp|aspx|jsp|json|
             action|html|js|txt|xml)             # . + extension
        (?:\?[^"|']{0,}|))                  # ? mark with parameters
    
      )
    
      (?:"|')                               # End newline delimiter
    
    """                                              
    
