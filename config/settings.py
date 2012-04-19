#!/usr/bin/env python
# coding: utf-8
import web

db = web.database(dbn='mysql', db='aplus', user='root', pw='root', charset='utf8')

render = web.template.render('templates/', cache=False)

web.config.debug = True

config = web.storage(
    email='i.kenting@gmail.com',
    site_name = 'A佳教育',
    site_desc = '',
    static = '/static',
)


web.template.Template.globals['config'] = config
web.template.Template.globals['render'] = render
