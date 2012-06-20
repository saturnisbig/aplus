#!/usr/bin/env python
# coding: utf-8

pre_fix = 'controllers.'

urls_admin = (
    '/',                    pre_fix + 'adminviews.index',
    '/teachers/',           pre_fix + 'adminviews.teachers'
    '/teacher/add/',        pre_fix + 'adminviews.teacher_add',
    '/teacher/edit/(\d+)',       pre_fix + 'adminviews.teacher_edit',
    '/teacher/del/(\d+)',        pre_fix + 'adminviews.teacher_del',
    '/courses/',            pre_fix + 'adminviews.courses',
    '/course/add/',         pre_fix + 'adminviews.course_add',
    '/course/edit/(\d+)',        pre_fix + 'adminviews.course_edit',
    '/course/del/(\d+)',         pre_fix + 'adminviews.course_del',
    '/activities/',         pre_fix + 'adminviews.activities',
    '/activity/add/',       pre_fix + 'adminviews.activity_add',
    '/activity/edit/(\d+)',      pre_fix + 'adminviews.activity_edit',
    '/activity/del/(\d+)',       pre_fix + 'adminviews.activity_del',
    '/register/',            pre_fix + 'adminviews.register',
    '/login/',               pre_fix + 'adminviews.login',
    '/logout/',              pre_fix + 'adminviews.logout',
)
