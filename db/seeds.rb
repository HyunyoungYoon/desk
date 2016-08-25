# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(email: 'user1@snu.ac.kr', password: "12341234", password_confirmation:"12341234", created_at: "2016-08-23 05:07:09")
User.create(email: "user2@snu.ac.kr", password:"12341234", password_confirmation:"12341234", created_at: "2016-08-23 05:07:09")

Agenda.create(name: 'thaad', user_id: 1)
Post.create(url: 'https://namu.wiki/w/THAAD', agenda_id: 1)
Comment.create(content: 'this is what namu wiki says about thaad', post_id:1, writer: 1)
Comment.create(content: 'This is a shared comment written by user 2', post_id:1, writer: 2)
Post.create(url: 'http://kr.brainworld.com/Opinion/14573', agenda_id: 1)
Comment.create(content: 'introduction of a novel thaad', post_id: 2)
# agenda 2
Agenda.create(name: 'sharehouse boom')
Post.create(url: 'http://www.cnews.co.kr/uhtml/read.jsp?idxno=201607061524574950273', agenda_id: 2)
Comment.create(content: 'sharehouse supplying policy of the opposite party', post_id:3)
# agenda 3
Agenda.create(name: 'thaad deployment', user_id: 45)
Post.create(url: 'https://namu.wiki/w/THAAD', agenda_id: 3)
Comment.create(content: 'This is unshared comment written by user 45', post_id:4, writer: 45)

Post.create(url: 'thaad url of agenda named thaad deployment', agenda_id: 3)
# agenda 4
Agenda.create(name: 'contention over thaad', user_id: 12)
Post.create(url: 'https://namu.wiki/w/THAAD', agenda_id: 4)
Post.create(url: 'thaad url of agenda named contention over thaad', agenda_id:4)
