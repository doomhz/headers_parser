headers_parser
==============

NodeJS library for extracting request headers information.

#Installation

    § npm install headers_parser

#Use

```javascript
headersParser = require("headers_parser");
```

###Extract browser version from the request headers

```javascript
headersParser.getBrowser(req.headers);
```

###Extract OS type from the request headers

```javascript
headersParser.getOS(req.headers);
```
