#!/usr/bin/env python
# coding: utf-8
import web
from config import settings
from datetime import datetime
from aplus import session
import re, hashlib, os.path

render = settings.render
db = settings.db
#tb = ''

class index:
    def GET(self):
        #grades = db.select('aplus_grade', order='grade_id asc')
        activities = db.select('aplus_activity', order='activity_postDate asc')
        #return render(todos)
        #return render(grades, activities)
        return render.index(activities=activities)

class courses(object):
    def GET(self):
        tb = 'aplus_course'
        courses = list(db.select(tb, order="course_id asc"))
        return render.courseList(courses=courses)

class courseView(object):
    def GET(self, id):
        tb = 'aplus_course'
        course = list(db.select(tb, where='course_id=$id', vars=locals()))
        return render.courseDetail(course=course[0])

class gradeView(object):
    def GET(self, id):
        tb = 'aplus_course'
        courses = list(db.select(tb, where='grade_id=$id', vars=locals()))
        return render.courseList(courses=courses)

class teachers(object):
    def GET(self):
        tb = 'aplus_teacher'
        teachers = list(db.select(tb, order='teacher_id asc'))
        return render.teacherList(teachers=teachers)

class teacherView(object):
    def GET(self, id):
        teacher = list(db.select('aplus_teacher', where='teacher_id=$id', vars=locals()))
        return render.teacherDetail(teacher=teacher[0])

class activities(object):
    def GET(self):
        tb = 'aplus_activity'
        activities = list(db.select(tb, order='activity_postDate desc'))
        return render.activityList(activities=activities)

class activityView(object):
    def GET(self, id):
        activity = list(db.select('aplus_activity', where='activity_id=$id', vars=locals()))
        return render.activityDetail(activity=activity[0])
