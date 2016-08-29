User.create(email: 'user1@snu.ac.kr', :password => '12341234', :password_confirmation => '12341234')
Agenda.create!([
  {name: "기본 소득 논쟁", color: "", user_id: 1}
])
Comment.create!([
  {content: "기본 소득을 시대에 따라 변화하는, 혹은 변화해야하는 사회안전망의 모습에 비추어 평가한다.", writer: 1, share: 0, post_id: 1},
  {content: "독일의 기본 소득 논의를 단계적으로 살펴볼 수 있다.\r\n이러이러한 점은 이해가 안된다. 이러이러한 점은 공감된다.", writer: 1, share: 0, post_id: 3}
])
Post.create!([
  {url: "http://www.econovill.com/news/articleView.html?idxno=294395", title: "[이우철의 Be-Cause마케팅] 사회 안전망과 코즈 마케팅 - 이코노믹리뷰 ", pic: "http://www.econovill.com/news/photo/201607/294395_112044_4546.jpg", abstract: "요즘 초등학생들의 장래 희망 1위가 아이돌이라고 한다. 그것을 대변하듯 대한민국에는 약 50만명의 아이돌 연습생이 있다. 물론 이들 중 성공하는...", view: false, agenda_id: 1, user_id: nil},
  {url: "http://www.economist.com/news/leaders/21699907-proponents-basic-income-underestimate-how-disruptive-it-would-be-basically-flawed", title: "Basically flawed | The Economist", pic: "http://cdn.static-economist.com/sites/default/files/imagecache/original-size/images/print-edition/20160604_LDC584.png", abstract: "Proponents of a basic income underestimate how disruptive it would be", view: false, agenda_id: 1, user_id: nil},
  {url: "http://m.media.daum.net/m/media/world/newsview/20160716175314264", title: "복지제도 있는데 왜 기본소득이 필요할까?..독일 좌파당 대표 인터뷰", pic: "http://t1.daumcdn.net/news/201607/16/khan/20160716175314151uaww.jpg", abstract: "[경향신문] 카티야 키핑 독일 좌파당 공동대표 “노동자들 힘 발휘 위해 필요” 강조 “국회의원들에게는 자본이나 이해집단의 로비에 굴복하지 말라고 세비를 지급하면서 왜 공화국의 평범한 시민들은 경제적 기반 없이 독립적일 것이라 기대하죠?” 카티야 키핑 독일 좌파당 공동대표(38)가 11일 <주간경향>과의 인터뷰에서 기본소득과 관련해 가장 많이 언급한 단어는", view: false, agenda_id: 1, user_id: nil}
])
Url.create!([
  {url: "http://www.econovill.com/news/articleView.html?idxno=294395", title: "[이우철의 Be-Cause마케팅] 사회 안전망과 코즈 마케팅 - 이코노믹리뷰 ", pic: "http://www.econovill.com/news/photo/201607/294395_112044_4546.jpg", abstract: "요즘 초등학생들의 장래 희망 1위가 아이돌이라고 한다. 그것을 대변하듯 대한민국에는 약 50만명의 아이돌 연습생이 있다. 물론 이들 중 성공하는..."},
  {url: "http://www.economist.com/news/leaders/21699907-proponents-basic-income-underestimate-how-disruptive-it-would-be-basically-flawed", title: "Basically flawed | The Economist", pic: "http://cdn.static-economist.com/sites/default/files/imagecache/original-size/images/print-edition/20160604_LDC584.png", abstract: "Proponents of a basic income underestimate how disruptive it would be"},
  {url: "http://m.media.daum.net/m/media/world/newsview/20160716175314264", title: "복지제도 있는데 왜 기본소득이 필요할까?..독일 좌파당 대표 인터뷰", pic: "http://t1.daumcdn.net/news/201607/16/khan/20160716175314151uaww.jpg", abstract: "[경향신문] 카티야 키핑 독일 좌파당 공동대표 “노동자들 힘 발휘 위해 필요” 강조 “국회의원들에게는 자본이나 이해집단의 로비에 굴복하지 말라고 세비를 지급하면서 왜 공화국의 평범한 시민들은 경제적 기반 없이 독립적일 것이라 기대하죠?” 카티야 키핑 독일 좌파당 공동대표(38)가 11일 <주간경향>과의 인터뷰에서 기본소득과 관련해 가장 많이 언급한 단어는"},
  {url: "http://www.economist.com/news/leaders/21699907-proponents-basic-income-underestimate-how-disruptive-it-would-be-basically-flawed", title: "Basically flawed | The Economist", pic: "http://cdn.static-economist.com/sites/default/files/imagecache/original-size/images/print-edition/20160604_LDC584.png", abstract: "Proponents of a basic income underestimate how disruptive it would be"}
])
