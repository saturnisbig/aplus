#!/usr/bin/env python
# coding: utf-8

import web
from config import settings
from datetime import datetime
from aplus import session
import re, hashlib, os.path

render = settings.render_admin
db = settings.db

class index(object):

    def GET(self):
        #if session.logined:
            return render.index()
        #else:
        #    raise web.seeother('/admin/login')


class courses(object):
    def GET(self):
        courses = list(db.select('aplus_course', order="course_id desc"))
        return render.courses(courses=courses[0])

class course_add(object):
    pass

class course_edit(object):
    def GET(self, id):
        pass

class course_del(object):
    def GET(self, id):
        pass

class teachers(object):
    def GET(self):
        pass


class teacher_add(object):
    def GET(self):
        pass

class teacher_edit(object):
    def GET(self):
        pass

class teacher_del(object):
    def GET(self):
        pass

class activities(object):
    def GET(self):
        activities = list(db.select('aplus_activity', order="activity_id desc"))
        return render.activitiesList(activities=activities[0])

class activity_add(object):
    def GET(self):
        pass

class activity_edit(object):
    def GET(self, id):
        pass

class activity_del(self):
    def GET(self, id):
        pass

    def GET(self, content_type):
      if content_type == "activity":
        return render.newActivity()
      elif content_type == "course":
        return render.newCourse()
      elif content_type == "teacher":
        stages = db.select('aplus_stage')
        bol = db.select('aplus_bol')
        schools = db.select('aplus_school')
        return render.newTeacher(stages, bol, schools)
      else:
        return render.index()

    def POST(self, content_type):
      tb = ''
      i = web.input()
      if content_type == "activity":
        tb = 'aplus_activity'
        activity_title = i.get('activity_title', None)
        activity_content = i.get('activity_content', None)
        if not activity_title or not activity_title:
          return render.newActivity('标题和内容请填写完整')
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
            return render.newCourse("信息输入不完整")
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
          return render.newTeacher("请输入姓名和简介.")
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

class Edit:

    def GET(self, type, id):
      if type == 'teacher':
        tb = 'aplus_teacher'
        stages = db.select('aplus_stage')
        bols = db.select('aplus_bol')
        schools = db.select('aplus_school')
        teacher = db.select(tb, where='teacher_id=$id', vars=locals()).list()[0]
        return render.editTeacher(stages, bols, schools, teacher)
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
      #return render.editTeacher(stages, bols, schools, teacher_name, teacher_intro, teacher_style, teacher_method, stage_id, bol_id, school_id)

        #todo = get_by_id(id)
        #if not todo:
        #    return render.error('没找到这条记录', None)
        #return render.todo.edit(todo)

    def POST(self, type, id):
      if type == 'teacher':
        tb = 'aplus_teacher'
        i = web.input()
        stage_id = i.get('stage_id', None)
        bol_id = i.get('bol_id', None)
        school_id = i.get('school_id', None)
        teacher_name = i.get('teacher_name', None)
        teacher_intro = i.get('teacher_intro', None)
        teacher_style = i.get('teacher_style', None)
        teacher_method = i.get('teacher_method', None)
        db.update(tb, stage_id=stage_id, bol_id=bol_id, school_id=school_id, teacher_name=teacher_name, \
                  teacher_intro=teacher_intro, teacher_style=teacher_style, teacher_method=teacher_method, \
                  where='teacher_id=$id', vars=locals())
        raise web.seeother('/teachers')
      #todo = get_by_id(id)
      #if not todo:
      #    return render.error('没找到这条记录', None)
      #i = web.input()
      #title = i.get('title', None)
      #if not title:
      #    return render.error('标题是必须的', None)
      #db.update(tb, title=title, where='id=$id', vars=locals())
      #return render.error('修改成功！', '/')

class login(object):
  def GET(self):
    return render.login()

    def POST(self):
      i = web.input()
      errors = []
      username, passwd = i.username, i.passwd
      if len(username) == 0 or len(passwd) == 0:
        errors.append(u'请输入用户名和密码。')
        #return render.login()
      else:
        m = hashlib.md5()
        m.update(passwd+settings.secret_key)
        passwd_md5 = m.hexdigest()
        result = db.select('users', where="username=$username and passwd=$passwd_md5", vars=locals())
        if not result:
          #return render.index('course', "")
          errors.append(u'用户名或密码错误。')

        if len(errors) == 0:
          user = result[0]
          user_id, username = user.user_id, user.username
          last_login = datetime.now()
          db.update('users', where="user_id=$user_id", ts_last_login=last_login, vars=locals())
          session.logined = True
          session.username = username
          #session['logined'] = True
          #session['username'] = username
          raise web.seeother('/admin')
        else:
          return render.login(errors)

class logout(object):

    def GET(self):
      #session['logined'] = False
      #session['username'] = ""
      session.logined = False
      session.username = ""
      session.kill()
      raise web.seeother('/admin/login')

class register(object):
  def GET(self):
    return render.register()

    def POST(self):
      i = web.input()
      errors = []
      username, email, passwd, repasswd = i.username, i.email, i.passwd, i.repasswd
      username = i.get('username', None)
      if (len(username) == 0):
        errors.append(u'用户名不能为空。')
      elif not is_valid_username(username):
        errors.append(u'用户名无效。')
      elif (user_exists(username)):
        errors.append(u'用户名已存在，请使用别的。')
      else:
        email = i.get('email', None)

        if email == None:
          errors.append(u'电子邮件不能为空。')
        elif not is_valid_email(email):
          errors.append(u'电子邮件格式错误。')
        else:
          passwd, repasswd = i.passwd, i.repasswd

        if (len(passwd) < 7):
          errors.append(u'密码至少要七位。')
        elif cmp(passwd, repasswd) != 0:
          errors.append(u'两次密码不同。')
        else:
          m = hashlib.md5()
          m.update(passwd+settings.secret_key)
          passwd_md5 = m.hexdigest()

        if len(errors) == 0:
          ts_created = datetime.now()
          user_id = db.insert('users', username=username, passwd=passwd_md5, ts_created=ts_created)
          #result = db.select('users', what='user_id', where='username=$username', vars=locals())
          #user_id = result[0].user_id
          if user_id:
            db.insert('user_profile', user_id=user_id, profile_key='email', profile_value=email)
            raise web.seeother('/admin/registerComplete')
          else:
            # errors happens while registering
            return render.register(errors)

class upload(object):

    def GET(self):
      return render.upload()

    def POST(self):
      try:
        i = web.input(myfile={})
        filedir = 'upload'
        if 'myfile' in i:
          filepath = i.myfile.filename.replace('\\', '/')
          filename = filepath.split('/')[-1]
          fileplace = filedir + '/' + filename
          if not os.path.exists(fileplace):
            fout = open(filedir + '/' + filename, 'wb')
            fout.write(i.myfile.file.read())
            fout.close()
          else:
            web.debug('file exists.')
            web.debug(i['myfile'].filename)
      except ValueError:
        return "文件太大."
      #web.debug(i['myfile'].value)
      #web.debug(i['myfile'].file.read())
      raise web.seeother('/upload')
