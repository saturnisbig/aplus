#!/usr/bin/env python
# coding: utf-8

pre_fix = 'controllers.'

urls = (
    '/',                    pre_fix + 'aplus.Index',
    '/about',               pre_fix + 'aplus.About',
    '/courses',             pre_fix + 'aplus.Courses',
    '/courses/(\d+)',       pre_fix + 'aplus.CoursesView',
    #'/grade',               pre_fix + 'aplus.Grade',
    '/grade/(\d+)',         pre_fix + 'aplus.GradeView',
    '/teachers',            pre_fix + 'aplus.Teachers',
    '/teachers/(\d+)',      pre_fix + 'aplus.TeachersView',
    '/activities',          pre_fix + 'aplus.Activities',
    '/activities/(\d+)',    pre_fix + 'aplus.ActivitiesView',
    '/contact',             pre_fix + 'aplus.Contact',
    '/todo/new',            pre_fix + 'todo.New',
    '/todo/(\d+)',          pre_fix + 'todo.View',
    '/todo/(\d+)/edit',     pre_fix + 'todo.Edit',
    '/todo/(\d+)/delete',   pre_fix + 'todo.Delete',
    '/todo/(\d+)/finish',   pre_fix + 'todo.Finish',

)
