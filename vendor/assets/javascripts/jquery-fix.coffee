$ ->
  if !$.browser
    $.uaMatch = (ua)->
      ua = ua.toLowerCase()
      match = /(chrome)[ \/]([\w.]+)/.exec( ua ) || /(webkit)[ \/]([\w.]+)/.exec( ua ) || /(opera)(?:.*version|)[ \/]([\w.]+)/.exec( ua ) || /(msie) ([\w.]+)/.exec( ua ) || ua.indexOf("compatible") < 0 && /(mozilla)(?:.*? rv:([\w.]+)|)/.exec( ua ) || []
      { browser: match[ 1 ] || "", version: match[ 2 ] || "0" }
    
    matched = $.uaMatch(navigator.userAgent)
    browser = {}
    
    if matched.browser
      browser[matched.browser] = true
      browser.version = matched.version
      
    if browser.chrome
      browser.webkit = true
    else if browser.webkit
      browser.safari = true
      
    $.browser = browser