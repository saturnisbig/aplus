#!/usr/bin/env python
# coding: utf-8

import admin

pre_fix = 'controllers.'

urls = (
    '/',                     pre_fix + 'views.index',
    '/about/',               pre_fix + 'views.about',
    '/courses/',             pre_fix + 'views.courses',
    '/course/(\d+)/',       pre_fix + 'views.courseView',
    '/grade/(\d+)/',        pre_fix + 'views.gradeView',
    '/teachers/',            pre_fix + 'views.teachers',
    '/teacher/(\d+)/',      pre_fix + 'views.teacherView',
    '/activities/',          pre_fix + 'views.activities',
    '/activity/(\d+)/',    pre_fix + 'views.activityView',
    '/contact/',             pre_fix + 'views.contact',
    '/admin',                admin.app_admin,
)
