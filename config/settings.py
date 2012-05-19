#!/usr/bin/env python
# coding: utf-8
import web
from code import session

db = web.database(dbn='mysql', db='aplus', user='root', pw='root')

# 添加session全局变量,方便在模板中访问.
render = web.template.render('templates/', globals={'context': session},
                             cache=False)

web.config.debug = True

config = web.storage(
    email='i.kenting@gmail.com',
    site_name = 'A佳教育',
    site_desc = '',
    static = '/static',
    # item number listed perpage.
    perpage = 10,
)

secret_key = 'aplus_by_teddy'

web.template.Template.globals['config'] = config
web.template.Template.globals['render'] = render
