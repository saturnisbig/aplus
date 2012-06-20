#!/usr/bin/env python
# coding: utf-8
from config.url import urls
import web

app = web.application(urls, globals())

# use this way to work with reloader in DEBUG mode.
if web.config.get('_session') is None:
    session = web.session.Session(app, web.session.DiskStore('sessions'),
                                  {'isAdmin': 0})
    web.config._session = session
else:
    session = web.config._session

if __name__ == "__main__":
    app.run()
