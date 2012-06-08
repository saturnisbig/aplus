#!/usr/bin/env python
# coding: utf-8
import web
# import the Mako template engine
from web.contrib.template import render_mako
from code import session
import cgi, os

db = web.database(dbn='mysql', db='aplus', user='root', pw='root')

# 添加session全局变量,方便在模板中访问.
#render = web.template.render('templates/', cache=False)#globals={'context': session},
# use Mako template engine
render = render_mako(
    directories = [os.getcwd() + '/templates'],
    input_encoding = 'utf-8',
    output_encoding = 'utf-8',
    )


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
web.template.Template.globals['context'] = session

# Maximum input we will accept when REQUEST_METHOD is POST
# 0 ==> unlimited input
cgi.maxlen = 10 * 1024 * 1024 # 10M
