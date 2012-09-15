HeadersParser =

  browserBlueprints: [
    {
      regexp: new RegExp(/Opera(\/| )([0-9]*.[0-9]{1,2})/)
      browser: "Opera"
      name_index: 0
    },
    {
      regexp: new RegExp(/MSIE ([0-9]*.[0-9]{1,2})/)
      browser: "MSIE"
      name_index: 0
    },
    {
      regexp: new RegExp(/Chrome\/([0-9]*.[0-9]{1,2})/)
      browser: "Chrome"
      name_index: 0
    },
    {
      regexp: new RegExp(/Safari\/([0-9]*)/)
      browser: "Safari"
      name_index: 0
    },
    {
      regexp: new RegExp(/Firefox\/([0-9]*.[0-9]{1,2})/)
      browser: "Firefox"
      name_index: 0
    },
    {
      regexp: new RegExp(/Mozilla\/([0-9]*.[0-9]{1,2})/)
      browser: "Mozilla"
      name_index: 0
    }
  ]

  osBlueprints: [
    {
      regexp: new RegExp(/iphone/i)
      os: "iPhone"
    },
    {
      regexp: new RegExp(/ipod/i)
      os: "iPod"
    },
    {
      regexp: new RegExp(/ipad/i)
      os: "iPad"
    },
    {
      regexp: new RegExp(/android/i)
      os: "Android"
    },
    {
      regexp: new RegExp(/blackberry/i)
      os: "BlackBerry"
    },
    {
      regexp: new RegExp(/webos/i)
      os: "Mobile"
    },
    {
      regexp: new RegExp(/windows nt 6.2/i)
      os: "Windows 8"
    },
    {
      regexp: new RegExp(/windows nt 6.1/i)
      os: "Windows 7"
    },
    {
      regexp: new RegExp(/windows nt 6.0/i)
      os: "Windows Vista"
    },
    {
      regexp: new RegExp(/windows nt 5.2/i)
      os: "Windows Server 2003/XP x64"
    },
    {
      regexp: new RegExp(/windows nt 5.1|windows xp/i)
      os: "Windows XP"
    },
    {
      regexp: new RegExp(/windows nt 5.0|windows 2000/i)
      os: "Windows 2000"
    },
    {
      regexp: new RegExp(/windows me|win 9x 4.90/i)
      os: "Windows ME"
    },
    {
      regexp: new RegExp(/win98|windows 98/i)
      os: "Windows 98"
    },
    {
      regexp: new RegExp(/win95|windows 95/i)
      os: "Windows 95"
    },
    {
      regexp: new RegExp(/win16/i)
      os: "Windows 3.11"
    },
    {
      regexp: new RegExp(/macintosh|mac os x/i)
      os: "Mac OS X"
    },
    {
      regexp: new RegExp(/mac_powerpc/i)
      os: "Mac OS 9"
    },
    {
      regexp: new RegExp(/ubuntu/i)
      os: "Ubuntu"
    },
    {
      regexp: new RegExp(/linux/i)
      os: "Linux"
    }
  ]

  getBrowser: (headers)->
    if headers["user-agent"]
      for browser in @browserBlueprints
        browserVersion = browser.regexp.exec(headers["user-agent"])
        return browserVersion[browser.name_index].replace(/\//g, " ") if browserVersion
    return false

  getOS: (headers)->
    if headers["user-agent"]
      for os in @osBlueprints
        osVersion = os.regexp.test(headers["user-agent"])
        return os.os if osVersion
    return false

exports = module.exports = HeadersParser