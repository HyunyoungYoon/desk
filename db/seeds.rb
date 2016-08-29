User.create!([
  {email: "user1@snu.ac.kr", encrypted_password: "$2a$11$RNfTn0pBUB0Quq3xcfctMewk6nrYZ.SwIu/hjPNpDOevb9acM8hbG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2016-08-29 16:57:55", sign_in_count: 1, current_sign_in_at: "2016-08-29 16:57:55", last_sign_in_at: "2016-08-29 16:57:55", current_sign_in_ip: "121.133.34.151", last_sign_in_ip: "121.133.34.151", is_admin: true},
  {email: "user2@snu.ac.kr", encrypted_password: "$2a$11$.rW9t1htpdgD1Xpbxzefj.yMiQiLSOX0cilc5kvCRKwujxbwKAWbe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, is_admin: true},
  {email: "user3@snu.ac.kr", encrypted_password: "$2a$11$KL7LGaKjZDfdKFPANG99xerFmtfTW3B/hi9jD6RZqNUohoTO8iN7W", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, is_admin: true},
  {email: "user4@snu.ac.kr", encrypted_password: "$2a$11$RS8VY0u15V3WN5pt7U015eLKy7LBRU4Mc9zBYIWRRLb2wo7ynLX4u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, is_admin: true}
])
Agenda.create!([
  {name: "기본 소득 제도", color: "", user_id: nil}
])
Comment.create!([
  {content: "조성주는 좌파의 ‘진정성/거짓’이라는 가치판단의 도식을 우파의 ‘현실주의·정책/감상·이미지·비합리’라는 도식과 융합함으로써 ‘진정성=현실주의·정책/감상·이미지·비합리=거짓’이라는 새로운 형태의 도식을 만들어내고, 거기에 기초해서 자신을 ‘현실주의/정책론자/진보’라는 새롭게 등장한 포지션에 배치한다.", writer: nil, share: 0, post_id: 1}
])
Post.create!([
  {url: "https://www.facebook.com/jodeng78/posts/1069591639777202", title: "조성주 - 당에서 기본소득을 검토중이라고 한다. 김종인 대표가 기본소득을 언급한 후이고 갑자기 보수적인... | Facebook", pic: "", abstract: "당에서 기본소득을 검토중이라고 한다. 김종인 대표가 기본소득을 언급한 후이고 갑자기 보수적인 색채의 정당들에서도 기본소득을 언급하면서다. 이슈가 되는 것에 대해 검토하는 것이야 정당의 기본 역할이니 당연하다. 다만 기본소득에 대한 나 개인적 입장을 말하자면 늘 말해왔듯이...", view: false, agenda_id: 1, user_id: nil}
])
Url.create!([
  {url: "https://www.facebook.com/jodeng78/posts/1069591639777202", title: "조성주 - 당에서 기본소득을 검토중이라고 한다. 김종인 대표가 기본소득을 언급한 후이고 갑자기 보수적인... | Facebook", pic: nil, abstract: "당에서 기본소득을 검토중이라고 한다. 김종인 대표가 기본소득을 언급한 후이고 갑자기 보수적인 색채의 정당들에서도 기본소득을 언급하면서다. 이슈가 되는 것에 대해 검토하는 것이야 정당의 기본 역할이니 당연하다. 다만 기본소득에 대한 나 개인적 입장을 말하자면 늘 말해왔듯이..."}
])
