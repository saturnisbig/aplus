#!/usr/bin/env python
# coding: utf-8
import web
from config import settings
from datetime import datetime

render = settings.render
db = settings.db
#tb = ''

def get_by_id(tb, id):
    s = db.select(tb, where='id=$id', vars=locals())
    if not s:
        return False
    return s[0]


class Admin(object):

    def GET(self):
        return render.admin.index('teacher', "")

class New:

    def GET(self, content_type):
        if content_type == "activity":
            return render.admin.newActivity()
        elif content_type == "course":
            return render.admin.newCourse()
        elif content_type == "teacher":
            stages = db.select('aplus_stage')
            bol = db.select('aplus_bol')
            schools = db.select('aplus_school')
            return render.admin.newTeacher(stages, bol, schools)
        else:
            return render.index.index()

    def POST(self, content_type):
        tb = ''
        i = web.input()
        if content_type == "activity":
            tb = 'aplus_activity'
            activity_title = i.get('activity_title', None)
            activity_content = i.get('activity_content', None)
            if not activity_title or not activity_title:
                return render.admin.newActivity('标题和内容请填写完整')
            db.insert(tb, activity_title=activity_title, activity_content \
                      =activity_content, activity_postDate=datetime.now())
            raise web.seeother('/activities')
        elif content_type == "course":
            tb = 'aplus_course'
            course_title = i.get('course_title', None)
            course_fee = i.get('course_fee', None)
            if course_fee.isdigit():
                course_fee = float(course_fee)
            else:
                course_fee = 0.0
            course_intro = i.get('course_intro', None)
            if not course_intro or not course_title or not course_fee:
                return render.admin.newCourse("信息输入不完整")
            db.insert(tb, course_title=course_title,course_fee=course_fee,\
                      course_intro=course_intro)
            raise web.seeother('/courses')
        elif content_type == "teacher":
            tb = 'aplus_teacher'
            teacher_name = i.get('teacher_name', None)
            teacher_intro = i.get('teacher_intro', None)
            teacher_style = i.get('teacher_style', None)
            teacher_method = i.get('teacher_method', None)
            bol_id = i.get('bol_id', None)
            stage_id = i.get('stage_id', None)
            school_id = i.get('school_id', None)
            if not teacher_name or not bol_id or not stage_id or not school_id:
                return render.admin.newTeacher("请输入姓名和简介.")
            db.insert(tb, bol_id=bol_id, stage_id=stage_id, school_id=school_id,\
                      teacher_name=teacher_name, teacher_intro=teacher_intro,\
                      teacher_style=teacher_style, teacher_method=teacher_method)
            raise web.seeother('/teachers')
        #i = web.input()
        #title = i.get('title', None)
        #if not title:
        #    return render.error('标题是必须的', None)
        #db.insert(tb, title=title, post_date=datetime.now())
        #raise web.seeother('/')


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

    def GET(self, type, id):
        if type == 'teacher':
            tb = 'aplus_teacher'
            stages = db.select('aplus_stage')
            bols = db.select('aplus_bol')
            schools = db.select('aplus_school')
            teacher = db.select(tb, where='teacher_id=$id', vars=locals()).list()[0]
            return render.admin.editTeacher(stages, bols, schools, teacher)
            #stage_id = teacher.stage_id
            #bol_id = teacher.bol_id
            #school_id = teacher.school_id
            #teacher_name = teacher.teacher_name
            #teacher_intro = teacher.teacher_intro
            #teacher_style = teacher.teacher_style
            #teacher_method = teacher.teacher_method
            #stage_id = teacher.get('stage_id')
            #bol_id = teacher.get('bol_id')
            #school_id = teacher.get('school_id')
            #teacher_name = teacher.get('teacher_name')
            #teacher_intro = teacher.get('teacher_intro')
            #teacher_style = teacher.get('teacher_style')
            #teacher_method = teacher.get('teacher_method')
            #return render.admin.editTeacher(stages, bols, schools, teacher_name, teacher_intro, teacher_style, teacher_method, stage_id, bol_id, school_id)

        #todo = get_by_id(id)
        #if not todo:
        #    return render.error('没找到这条记录', None)
        #return render.todo.edit(todo)

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
        return render.index.index(activities)

class Login(object):
    def GET(self):
        return render.admin.login()

    def POST(self):
        pass


class About(object):
    def GET(self):
        return render.index.about()

class Contact(object):
    def GET(self):
        return render.index.contact()

class Courses(object):
    def GET(self):
        tb = 'aplus_course'
        courses = db.select(tb, order='course_id asc')
        return render.index.courseList(courses)

class CoursesView(object):
    def GET(self, id):
        tb = 'aplus_course'
        course = db.select(tb, where='course_id=$id', vars=locals())
        return render.index.courseDetail(course)

class GradesView(object):
    def GET(self, id):
        tb = 'aplus_course'
        courses = db.select(tb, where='grade_id=$id', vars=locals())
        return render.index.courseList(courses)

class Teachers(object):
    def GET(self):
        tb = 'aplus_teacher'
        teachers = db.select(tb, order='teacher_id asc')
        return render.index.teachersList(teachers)

class TeachersView(object):
    def GET(self, id):
        teacher = db.select('aplus_teacher', where='teacher_id=$id', vars=locals())
        return render.index.teacherDetail(teacher.list()[0])

class Activities(object):
    def GET(self):
        tb = 'aplus_activity'
        activities = db.select(tb, order='activity_postDate desc')
        return render.index.activitiesList(activities)

class ActivitiesView(object):
    def GET(self, id):
        activity = db.select('aplus_activity', where='activity_id=$id', vars=locals())
        return render.index.activityDetail(activity)
