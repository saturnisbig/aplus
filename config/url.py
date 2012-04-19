#!/usr/bin/env python
# coding: utf-8

pre_fix = 'controllers.'

urls = (
    '/',                    pre_fix + 'aplus.Index',
    '/about',               pre_fix + 'aplus.About',
    '/course',              pre_fix + 'aplus.Course',
    '/teacher',             pre_fix + 'aplus.Teacher',
    '/activity',            pre_fix + 'aplus.Activity',
    '/contact',             pre_fix + 'aplus.Contact',
    '/todo/new',            pre_fix + 'todo.New',
    '/todo/(\d+)',          pre_fix + 'todo.View',
    '/todo/(\d+)/edit',     pre_fix + 'todo.Edit',
    '/todo/(\d+)/delete',   pre_fix + 'todo.Delete',
    '/todo/(\d+)/finish',   pre_fix + 'todo.Finish',

)
