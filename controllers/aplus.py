#!/usr/bin/env python
# coding: utf-8
import web
from config import settings
from datetime import datetime

render = settings.render
db = settings.db
#tb = ''

def get_by_id(id):
    s = db.select(tb, where='id=$id', vars=locals())
    if not s:
        return False
    return s[0]


class New:

    def POST(self):
        i = web.input()
        title = i.get('title', None)
        if not title:
            return render.error('标题是必须的', None)
        db.insert(tb, title=title, post_date=datetime.now())
        raise web.seeother('/')


class Finish:

    def GET(self, id):
        todo = get_by_id(id)
        if not todo:
            return render.error('没找到这条记录', None)
        i = web.input()
        status = i.get('status', 'yes')
        if status == 'yes':
            finished = 1
        elif status == 'no':
            finished = 0
        else:
            return render.error('您发起了一个不允许的请求', '/')
        db.update(tb, finished=finished, where='id=$id', vars=locals())
        raise web.seeother('/')


class Edit:

    def GET(self, id):
        todo = get_by_id(id)
        if not todo:
            return render.error('没找到这条记录', None)
        return render.todo.edit(todo)

    def POST(self, id):
        todo = get_by_id(id)
        if not todo:
            return render.error('没找到这条记录', None)
        i = web.input()
        title = i.get('title', None)
        if not title:
            return render.error('标题是必须的', None)
        db.update(tb, title=title, where='id=$id', vars=locals())
        return render.error('修改成功！', '/')

class Delete:

    def GET(self, id):
        todo = get_by_id(id)
        if not todo:
            return render.error('没找到这条记录', None)
        db.delete(tb, where='id=$id', vars=locals())
        return render.error('删除成功！', '/')


class Index:

    def GET(self):
        #grades = db.select('aplus_grade', order='grade_id asc')
        activities = db.select('aplus_activity', order='activity_postDate asc')
        #return render.index(todos)
        #return render.index(grades, activities)
        return render.index(activities)

class About(object):
    def GET(self):
        return render.aplus.about()

class Contact(object):
    def GET(self):
        return render.aplus.contact()

class Courses(object):
    def GET(self):
        tb = 'aplus_course'
        courses = db.select(tb, order='course_id asc')
        return render.aplus.courseList(courses)

class CoursesView(object):
    def GET(self, id):
        tb = 'aplus_course'
        course = db.select(tb, where='course_id=$id', vars=locals())
        return render.aplus.courseDetail(course)

class GradesView(object):
    def GET(self, id):
        tb = 'aplus_course'
        courses = db.select(tb, where='grade_id=$id', vars=locals())
        return render.aplus.courseList(courses)

class Teachers(object):
    def GET(self):
        tb = 'aplus_teacher'
        teachers = db.select(tb, order='teacher_id asc')
        return render.aplus.teachersList(teachers)

class TeachersView(object):
    def GET(self, id):
        teacher = db.select('aplus_teacher', where='teacher_id=$id', vars=locals())
        return render.aplus.teacherDetail(teacher)

class Activities(object):
    def GET(self):
        tb = 'aplus_activity'
        activities = db.select(tb, order='activity_postDate desc')
        return render.aplus.activitiesList(activities)

class ActivitiesView(object):
    def GET(self, id):
        activity = db.select('aplus_activity', where='activity_id=$id')
        return render.aplus.activityDetail(activity)
