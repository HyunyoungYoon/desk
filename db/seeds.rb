# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "seed 파일 생성 시작"

User.create(email: 'user1@snu.ac.kr', password: "12341234", password_confirmation: "12341234", created_at: "2016-08-23 05:07:09", is_admin: true)
User.create(email: "user2@snu.ac.kr", password: "12341234", password_confirmation: "12341234", created_at: "2016-08-23 05:07:09", is_admin: true)
User.create(email: "user3@snu.ac.kr", password: "12341234", password_confirmation: "12341234", created_at: DateTime.now, is_admin: true)
User.create(email: "user4@snu.ac.kr", password: "12341234", password_confirmation: "12341234", created_at: DateTime.now, is_admin: true)

# Agenda.create(name: 'thaad', user_id: 1)
# Agenda.create(name: 'sharehouse boom', user_id: 2)
# Agenda.create(name: 'thaad deployment', user_id: 45)
# Agenda.create(name: 'contention over thaad', user_id: 12)

# Post.create(url: 'https://namu.wiki/w/THAAD', agenda_id: 1)
# Post.create(url: 'http://kr.brainworld.com/Opinion/14573', agenda_id: 1)
# Post.create(url: 'http://www.cnews.co.kr/uhtml/read.jsp?idxno=201607061524574950273', agenda_id: 2)
# Post.create(url: 'https://namu.wiki/w/THAAD', agenda_id: 3)
# Post.create(url: 'thaad url of agenda named thaad deployment', agenda_id: 3)
# Post.create(url: 'https://namu.wiki/w/THAAD', agenda_id: 4)
# Post.create(url: 'http://www.cnews.co.kr/uhtml/read.jsp?idxno=201607061524574950273', agenda_id:4)

# Comment.create(content: 'this is what namu wiki says about thaad', post_id: 1, writer: 1, share:1)
# Comment.create(content: 'This is a shared comment written by user 2', post_id: 1, writer: 2, share: 2)
# Comment.create(content: 'introduction of a novel thaad', post_id: 2)
# Comment.create(content: 'sharehouse supplying policy of the opposite party', post_id:3)
# Comment.create(content: 'This is unshared comment written by user 45', post_id:4, writer: 45)
Agenda.create(name: "맨체스터 유나이티드 이적", color: "red", user_id: 1)
Agenda.create(name: "맨체스터 유나이티드", color: "red", user_id: 2)
Agenda.create(name: "2016 여름 이적 시장", color: "blue", user_id: 3)
Agenda.create(name: "폴 포그바 맨유 이적", color: "black", user_id: 4)

Post.create(user_id: 1, agenda_id: 1, url: "http://m.sports.naver.com/wfootball/news/read.nhn?oid=139&aid=0002059062", title: "西 마르카, \"포그바, 맨유 이적 합의\"... 5년 계약", pic: "pogba1.png", abstract: "[스포탈코리아] 김지우 기자= 폴 포그바(유벤투스)가 마침내 맨체스터 유나이티드(이하 맨유) 이적에 합의했다고 스페인 언론이 전했다.", view: true)
Post.create(user_id: 1, agenda_id: 1, url: "http://m.sports.naver.com/wfootball/news/read.nhn?oid=216&aid=0000084971", title: "무리뉴 \"즐라탄을 세 단어로 표현한다면?\"", pic: "mourinho1.png", abstract: "승자(Winner), 골잡이(Goalscorer), 재미있는 친구(Funny Guy)")
Post.create(user_id: 1, agenda_id: 1, url: "http://m.sports.naver.com/wfootball/news/read.nhn?oid=139&aid=0002058707", title: "[오피셜] 맨유, 미키타리안 영입 발표... 4년 계약", pic: "mkhitaryan1.png", abstract: "[스포탈코리아] 김지우 기자= 맨체스터 유나이티드(이하 맨유)가 헨리크 미키타리안의 영입을 공식 발표했다.")
Post.create(user_id: 1, agenda_id: 1, url: "http://m.sports.naver.com/wfootball/news/read.nhn?oid=413&aid=0000036071", title: "'공식 발표' 즐라탄, \"내 다음 행선지는 맨유\"", pic: "zlatan1.png", abstract: "[인터풋볼] 정지훈 기자= 예상대로였다. 즐라탄 이브라히모비치(34)의 차기 행선지는 맨체스터 유나이티드였다.", view: true)
Post.create(user_id: 1, agenda_id: 1, url: "http://m.sports.naver.com/wfootball/news/read.nhn?oid=216&aid=0000084222", title: "BBC \"맨유, 판 할 경질하고 무리뉴 부임한다\"", pic: "mourinho2.png", abstract: "[골닷컴] 김현민 기자 = 前 첼시 감독 주제 무리뉴가 맨체스터 유나이티드(이하 맨유) 신임 감독직에 부임할 것이라고 영국 공중파 채널 'BBC'가 전했다.", view: true)

Post.create(user_id: 2, agenda_id: 2, url: "http://m.sports.naver.com/wfootball/news/read.nhn?oid=139&aid=0002059062", title: "西 마르카, \"포그바, 맨유 이적 합의\"... 5년 계약", pic: "pogba1.png", abstract: "[스포탈코리아] 김지우 기자= 폴 포그바(유벤투스)가 마침내 맨체스터 유나이티드(이하 맨유) 이적에 합의했다고 스페인 언론이 전했다.", view: true)
Post.create(user_id: 2, agenda_id: 2, url: "http://m.sports.naver.com/wfootball/news/read.nhn?oid=216&aid=0000084971", title: "무리뉴 \"즐라탄을 세 단어로 표현한다면?\"", pic: "mourinho1.png", abstract: "승자(Winner), 골잡이(Goalscorer), 재미있는 친구(Funny Guy)", view: true)
Post.create(user_id: 2, agenda_id: 2, url: "https://www.soccerline.co.kr/slboard/view.php?uid=1987013890&page=55&code=soccerboard&keyfield=subject&key=%B9%AB%B8%AE%B4%BA&period=0|1987508143", title: "[오피셜] 조제 무리뉴, 맨체스터 유나이티드 감독 부임", pic: "mourinho3.png", abstract: "3년계약＋연장옵션", view: true)

Post.create(user_id: 3, agenda_id: 3, url: "http://m.sports.naver.com/wfootball/news/read.nhn?oid=139&aid=0002059062", title: "西 마르카, \"포그바, 맨유 이적 합의\"... 5년 계약", pic: "pogba1.png", abstract: "[스포탈코리아] 김지우 기자= 폴 포그바(유벤투스)가 마침내 맨체스터 유나이티드(이하 맨유) 이적에 합의했다고 스페인 언론이 전했다.", view: true)

Post.create(user_id: 4, agenda_id: 4, url: "http://m.sports.naver.com/wfootball/news/read.nhn?oid=139&aid=0002059062", title: "西 마르카, \"포그바, 맨유 이적 합의\"... 5년 계약", pic: "pogba1.png", abstract: "[스포탈코리아] 김지우 기자= 폴 포그바(유벤투스)가 마침내 맨체스터 유나이티드(이하 맨유) 이적에 합의했다고 스페인 언론이 전했다.")
# Post.create(url: 'https://namu.wiki/w/THAAD', agenda_id: 1, title: "thaad namuwiki")

Comment.create(post_id: 1, content: "마르카 공식 홈페이지는 물론 홈페이지 내 확실하지 않은 가쉽거리 올라오는 페이지에도 포그바 관련 글이 없는데 뭘 보고 마르카라고 제목 붙인거죠 김지우기자는? 조회수 노리고 허위제목 붙인거면 심각할 정도로 언론인의 윤리적 자세에 위배되는 것 아닌가요? 동일한 댓글에 비공감 누르는 건 기자 본인인가요? 해명이 필요해보입니다", writer: 1, share: 4)
Comment.create(post_id: 1, content: "베일보다.. 호날두보다.. 높은 가치가 있을까..", writer: 2, share: 1)
Comment.create(post_id: 1, content: "무리뉴 파워 ㄷ ㄷ하네", writer: 3, share: 2)
Comment.create(post_id: 1, content: "라이올라가 이 말을 했댄다.....이적할거면 맨유로만 이적할거라고", writer: 3)
Comment.create(post_id: 1, content: "그리고 이글은 성지가 되었죠", writer: 4)


Comment.create(post_id: 1, content: "이글은 성지가 되었죠", writer: 4)
Comment.create(post_id: 2, content: "즐라탄을 3글자로 표현하자면 `신현준`", writer: 3)
Comment.create(post_id: 3, content: "캬 옆동네 마네랑 비교되네ㅋㅋㅋㅋ심지어 더 싸게삼", writer: 2)
Comment.create(post_id: 4, content: "즐라탄이 드디어 epl에.. 이번에도 리그 우승트로피 수집 할 수 있을까 ㅋㅋㅋㅋㅋ", writer: 1)
Comment.create(post_id: 5, content: "올레", writer: 2)
Comment.create(post_id: 6, content: "응.아니야.....", writer: 3)
Comment.create(post_id: 7, content: "신현준을 이길 드립이 생각나지 않는다", writer: 4)
Comment.create(post_id: 8, content: "하..진짜 눈물난다 이 소식을 얼마나 기다렸냐", writer: 3)
Comment.create(post_id: 9, content: "임마들은 포그바오면 유니폼팔리는것만 생각하지 우드워드는 무서운사람이다 유니폼보다 무리뉴 므키타리안 즐라탄등을 영입해서 주식상장이나 투자자들한테 투자받는 금액은 어마무시하지 맨유는 부도날 걱정없으니까 니들 밥걱정이나 하는게 낫겠다", writer: 2)
Comment.create(post_id: 10, content: "ㅋㅋㅋㅋ공짜로 주고 1500억으로 다시 살려고하고ㄷㄷ", writer: 1)

puts "seed 파일 생성 완료"
