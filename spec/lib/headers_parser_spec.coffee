describe "HeadersParser", ()->
  headersParser = require "../../lib/headers_parser"
  headers =
    # Browser
    opera_9_5:
      "user-agent": "Mozilla/5.0 (Windows NT 6.0; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.51"
    opera_11:
      "user-agent": "Opera/9.80 (Windows NT 6.1; WOW64; U; pt) Presto/2.10.229 Version/11.62"
    ie_7:
      "user-agent": "Mozilla/5.0 (Windows; U; MSIE 7.0; Windows NT 6.0; en-US)"
    ie_10:
      "user-agent": "Mozilla/5.0 (compatible; MSIE 10.6; Windows NT 6.1; Trident/5.0; InfoPath.2; SLCC1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 2.0.50727) 3gpp-gba UNTRUSTED/1.0"
    gchrome:
      "user-agent": "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1"
    safari:
      "user-agent": "Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5355d Safari/8536.25"
    firefox_3_5:
      "user-agent": "Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 GTB5"
    firefox_14:
      "user-agent": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1"
    mozilla_2:
      "user-agent": "Mozilla/5.0 (Windows; U; Windows NT 6.1; it; rv:2.0b4) Gecko/20100818"

    # OS
    iphone:
      "user-agent": "Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1A543a Safari/419.3"
    ipod:
      "user-agent": "Mozilla/5.0 (iPod; U; CPU like Mac OS X; en) AppleWebKit/420.1 (KHTML, like Gecko) Version/3.0 Mobile/3A101a Safari/419.3"
    ipad:
      "user-agent": "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) version/4.0.4 Mobile/7B367 Safari/531.21.10"
    android:
      "user-agent": "Mozilla/5.0 (Linux; U; Android 0.5; en-us) AppleWebKit/522+ (KHTML, like Gecko) Safari/419.3"
    blackberry:
      "user-agent": "Mozilla/5.0 (BlackBerry; U; BlackBerry AAAA; en-US) AppleWebKit/534.11+ (KHTML, like Gecko) Version/X.X.X.X Mobile Safari/534.11+"
    mobile:
      "user-agent": "Mozilla/5.0 (webOS/1.4.5; U; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Version/1.0 Safari/532.2 Pre/1.0"
    windows_8:
      "user-agent": "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)"
    windows_7:
      "user-agent": "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; Media Center PC 6.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET CLR 1.1.4322; InfoPath.2; MS-RTC LM 8)"
    windows_vista:
      "user-agent": "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)"
    windows_server_2003:
      "user-agent": "Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.8b5) Gecko/20051006 Firefox/1.4.1"
    windows_xp:
      "user-agent": "Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.8.1.15) Gecko/20080623 Firefox/2.0.0.15"
    windows_xp_2:
      "user-agent": "Mozilla/5.0 (Windows; U; Windows XP; pt-BR; rv:1.8.1.15) Gecko/20080623 Firefox/2.0.0.15"
    windows_2000:
      "user-agent": "Mozilla/5.0 (Windows NT 5.0; U) Opera 7.0 [en]"
    windows_2000_2:
      "user-agent": "Mozilla/5.0 (Windows 2000; U) Opera 7.0 [en]"
    windows_me:
      "user-agent": "Mozilla/5.0 (Windows; U; Win 9x 4.90; rv:1.7) Gecko/20041103 Firefox/0.9.3"
    windows_me_2:
      "user-agent": "Mozilla/5.0 (Windows; U; Windows ME; rv:1.7) Gecko/20041103 Firefox/0.9.3"
    windows_98:
      "user-agent": "Opera/4.02 (Windows 98; U) [en]"
    windows_98_2:
      "user-agent": "Opera/4.02 (Win98; U) [en]"
    windows_95:
      "user-agent": "Mozilla/3.0 (compatible; PerMan Surfer 3.0; Win95)"
    windows_95_2:
      "user-agent": "Mozilla/3.0 (compatible; PerMan Surfer 3.0; Windows 95)"
    windows_3:
      "user-agent": "Mozilla/2.01 (Win16; I)"
    mac_os_x:
      "user-agent": "Mozilla/5.0 (CPU OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Safari/8536.25"
    mac_os_x_2:
      "user-agent": "Mozilla/5.0 (CPU OS 6_0 like Macintosh) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Safari/8536.25"
    mac_os_9:
      "user-agent": "Mozilla/4.0 (compatible; MSIE 5.23; Mac_PowerPC)"
    ubuntu:
      "user-agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:14.0) Gecko/20100101 Firefox/14.0.1"
    linux:
      "user-agent": "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4 (Splashtop-v1.0.5.0)"

  describe "getBrowser", ()->
    describe "when user-agent is Opera 9.51", ()->
      it "returns Opera 9.51", ()->
        expect(headersParser.getBrowser(headers.opera_9_5)).toEqual("Opera 9.51")

    describe "when user-agent is Opera 11", ()->
      it "returns Opera 9.80", ()->
        expect(headersParser.getBrowser(headers.opera_11)).toEqual("Opera 9.80")

    describe "when user-agent is MSIE 7", ()->
      it "returns MSIE 7.0", ()->
        expect(headersParser.getBrowser(headers.ie_7)).toEqual("MSIE 7.0")

    describe "when user-agent is MSIE 10.6", ()->
      it "returns MSIE 10.6", ()->
        expect(headersParser.getBrowser(headers.ie_10)).toEqual("MSIE 10.6")

    describe "when user-agent is Google Chrome 22.0", ()->
      it "returns Chrome 22.0", ()->
        expect(headersParser.getBrowser(headers.gchrome)).toEqual("Chrome 22.0")

    describe "when user-agent is Safari 8536.25", ()->
      it "returns Safari 8536", ()->
        expect(headersParser.getBrowser(headers.safari)).toEqual("Safari 8536")

    describe "when user-agent is Firefox 3.5", ()->
      it "returns Firefox 3.5", ()->
        expect(headersParser.getBrowser(headers.firefox_3_5)).toEqual("Firefox 3.5")

    describe "when user-agent is Firefox 14", ()->
      it "returns Firefox 14.0", ()->
        expect(headersParser.getBrowser(headers.firefox_14)).toEqual("Firefox 14.0")

    describe "when user-agent is Mozilla 2", ()->
      it "returns Mozilla 5.0", ()->
        expect(headersParser.getBrowser(headers.mozilla_2)).toEqual("Mozilla 5.0")

  describe "getOS", ()->
    describe "when user-agent is iPhone", ()->
      it "returns iPhone", ()->
        expect(headersParser.getOS(headers.iphone)).toEqual("iPhone")
    describe "when user-agent is iPod", ()->
      it "returns iPod", ()->
        expect(headersParser.getOS(headers.ipod)).toEqual("iPod")
    describe "when user-agent is iPad", ()->
      it "returns iPad", ()->
        expect(headersParser.getOS(headers.ipad)).toEqual("iPad")
    describe "when user-agent is Android", ()->
      it "returns Android", ()->
        expect(headersParser.getOS(headers.android)).toEqual("Android")
    describe "when user-agent is BlackBerry", ()->
      it "returns BlackBerry", ()->
        expect(headersParser.getOS(headers.blackberry)).toEqual("BlackBerry")
    describe "when user-agent is WebOS", ()->
      it "returns Mobile", ()->
        expect(headersParser.getOS(headers.mobile)).toEqual("Mobile")
    describe "when user-agent is Windows NT 6.2", ()->
      it "returns Windows 8", ()->
        expect(headersParser.getOS(headers.windows_8)).toEqual("Windows 8")
    describe "when user-agent is Windows NT 6.1", ()->
      it "returns Windows 7", ()->
        expect(headersParser.getOS(headers.windows_7)).toEqual("Windows 7")
    describe "when user-agent is Windows NT 6.0", ()->
      it "returns Windows Vista", ()->
        expect(headersParser.getOS(headers.windows_vista)).toEqual("Windows Vista")
    describe "when user-agent is Windows NT 5.2", ()->
      it "returns Windows Server 2003/XP x64", ()->
        expect(headersParser.getOS(headers.windows_server_2003)).toEqual("Windows Server 2003/XP x64")
    describe "when user-agent is Windows NT 5.1", ()->
      it "returns Windows XP", ()->
        expect(headersParser.getOS(headers.windows_xp)).toEqual("Windows XP")
    describe "when user-agent is Windows XP", ()->
      it "returns Windows XP", ()->
        expect(headersParser.getOS(headers.windows_xp_2)).toEqual("Windows XP")
    describe "when user-agent is Windows NT 5.0", ()->
      it "returns Windows 2000", ()->
        expect(headersParser.getOS(headers.windows_2000)).toEqual("Windows 2000")
    describe "when user-agent is Windows 2000", ()->
      it "returns Windows 2000", ()->
        expect(headersParser.getOS(headers.windows_2000_2)).toEqual("Windows 2000")
    describe "when user-agent is win 9x 4.90", ()->
      it "returns Windows ME", ()->
        expect(headersParser.getOS(headers.windows_me)).toEqual("Windows ME")
    describe "when user-agent is Windows ME", ()->
      it "returns Windows ME", ()->
        expect(headersParser.getOS(headers.windows_me_2)).toEqual("Windows ME")
    describe "when user-agent is Windows 98", ()->
      it "returns Windows 98", ()->
        expect(headersParser.getOS(headers.windows_98)).toEqual("Windows 98")
    describe "when user-agent is Win98", ()->
      it "returns Windows 98", ()->
        expect(headersParser.getOS(headers.windows_98_2)).toEqual("Windows 98")
    describe "when user-agent is Windows 95", ()->
      it "returns Windows 95", ()->
        expect(headersParser.getOS(headers.windows_95)).toEqual("Windows 95")
    describe "when user-agent is Win95", ()->
      it "returns Windows 95", ()->
        expect(headersParser.getOS(headers.windows_95_2)).toEqual("Windows 95")
    describe "when user-agent is Win16", ()->
      it "returns Windows 3.11", ()->
        expect(headersParser.getOS(headers.windows_3)).toEqual("Windows 3.11")
    describe "when user-agent is Mac OS X", ()->
      it "returns Mac OS X", ()->
        expect(headersParser.getOS(headers.mac_os_x)).toEqual("Mac OS X")
    describe "when user-agent is Macintosh", ()->
      it "returns Mac OS X", ()->
        expect(headersParser.getOS(headers.mac_os_x_2)).toEqual("Mac OS X")
    describe "when user-agent is mac_powerpc", ()->
      it "returns Mac OS 9", ()->
        expect(headersParser.getOS(headers.mac_os_9)).toEqual("Mac OS 9")
    describe "when user-agent is Ubuntu", ()->
      it "returns Ubuntu", ()->
        expect(headersParser.getOS(headers.ubuntu)).toEqual("Ubuntu")
    describe "when user-agent is Linux", ()->
      it "returns Linux", ()->
        expect(headersParser.getOS(headers.linux)).toEqual("Linux")
