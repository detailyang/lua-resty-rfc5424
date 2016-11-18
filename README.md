[rfc5424]: https://tools.ietf.org/html/rfc5424
[lua-resty-logger-socket]: https://github.com/cloudflare/lua-resty-logger-socket
[rsyslog]: http://www.rsyslog.com

Name
====
lua-resty-rfc5424

# lua-resty-rfc5424
This is an implementation of the [RFC5424](syslog) in the OpenResty

Table of Contents
-----------------
* [Name](#name)
* [Status](#status)
* [Usage](#usage)
* [API](#api)
* [Contributing](#contributing)
* [Author](#author)
* [License](#license)


Status
====
![lua-resty-rfc5424](https://travis-ci.org/detailyang/lua-resty-rfc5424.svg?branch=master)

Production Ready

Usage
====
It's recommended to use [lua-resty-logger-socket] and [rsyslog] together:)

Production Architecture can be as the following:

![architecture](https://raw.githubusercontent.com/detailyang/lua-resty-rfc5424/master/fixtures/rsyslog.jpg)

API
====

encode
---
`syntax: rfc5424.encode(facility, severity, hostname, pid, appname, msg)`

This will encode the msg to the rfc5424 format:

Contributing
------------

To contribute to lua-resty-rfc5424, clone this repo locally and commit your code on a separate branch.

PS: PR Welcome :rocket: :rocket: :rocket: :rocket:


Author
------

> GitHub [@detailyang](https://github.com/detailyang)

License
-------
lua-resty-rfc5424 is licensed under the [MIT] license.

[MIT]: https://github.com/detailyang/ybw/blob/master/licenses/MIT
