#!/usr/bin/env python
# coding: utf-8

import web
from config.url_admin import urls_admin

app_admin = web.application(urls_admin, locals())
