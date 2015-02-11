# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.delete_all
# Song.delete_all
# Comment.delete_all

u1 = User.create(name: "Neil Young", bio:"Great stuff. Strange voice", email: 'a@a.com' , password: 'password', password_confirmation: 'password')
u2 = User.create(name: "Bob Dylan", bio:"Bloody marvellous", email: 'b@b.com', password: 'password', password_confirmation: 'password')
u3 = User.create(name: "Tom Petty", bio:"Brilliant songwriter", email: 'c@c.com' , password: 'password', password_confirmation: 'password')
u4 = User.create(name: "Paul Simon", bio:"Doesn't get much better", email: 'd@d.com' , password: 'password', password_confirmation: 'password')
u5 = User.create(name: "The Black Keys", bio:"great guitar", email: 'e@e.com' , password: 'password', password_confirmation: 'password')


s1 = Song.create(name:"Ohio", user_id: u1.id)
s2 = Song.create(name:"Cowgirl in the Sand", user_id: u1.id)
s3 = Song.create(name:"Heart of Gold", user_id: u1.id)
s4 = Song.create(name:"Hurricane", user_id: u2.id)
s5 = Song.create(name:"Girl from the North Country", user_id: u2.id)
s6 = Song.create(name:"Masters of War", user_id: u2.id)
s7 = Song.create(name:"Mr. Tambourine Man", user_id: u2.id)
s8 = Song.create(name:"Won't Back Down", user_id: u3.id)
s9 = Song.create(name:"American Girl", user_id: u3.id)
s10 = Song.create(name:"Freefallin'", user_id: u3.id)
s11 = Song.create(name:"Into the Great Wide-Open", user_id: u3.id)
s12 = Song.create(name:"Duncan", user_id: u4.id)
s13 = Song.create(name:"Me and Julio Down by the Schoolyard", user_id: u4.id)
s12 = Song.create(name:"Graceland", user_id: u4.id)
s13 = Song.create(name:"The Big Come-Up", user_id: u5.id)
s14 = Song.create(name:"Lonely Boy", user_id: u5.id)

c1 = Comment.create(content:"A great song. One of his best!", song_id: s1.id, user_id: u1.id)
c2 = Comment.create(content:"A wonderful song. I love this one!", song_id: s1.id, user_id: u1.id)
c3 = Comment.create(content:"What a terrible song!", song_id: s1.id, user_id: u1.id)
c4 = Comment.create(content:"Not his best, but still good!", song_id: s2.id, user_id: u1.id)
c5 = Comment.create(content:"This song is alright", song_id: s2.id, user_id: u1.id)

# c6 = Comment.create(content:"not bad", song_id: s2.id)
# c7 = Comment.create(content:"I've heard better", song_id: s3.id)
# c8 = Comment.create(content:"a good verios of this song", song_id: s3.id)
# c9 = Comment.create(content:"good cover", song_id: s3.id)
# c10 = Comment.create(content:"A great song. One of his best!", song_id: s4.id)
# c11 = Comment.create(content:"A great song. One of his best!", song_id: s4.id)
# c12 = Comment.create(content:"A wonderful song. I love this one!", song_id: s4.id)
# c13 = Comment.create(content:"What a terrible song!", song_id: s4.id)
# c14 = Comment.create(content:"Not his best, but still good!", song_id: s5.id)
# c15 = Comment.create(content:"This song is alright", song_id: s5.id)
# c16 = Comment.create(content:"not bad", song_id: s6.id)
# c17 = Comment.create(content:"I've heard better", song_id: s6.id)
# c18 = Comment.create(content:"a good verios of this song", song_id: s6.id)
# c19 = Comment.create(content:"good cover", song_id: s6.id)
# c20 = Comment.create(content:"A great song. One of his best!", song_id: s6.id)
# c21 = Comment.create(content:"A great song. One of his best!", song_id: s7.id)
# c22 = Comment.create(content:"A wonderful song. I love this one!", song_id: s7.id)
# c23 = Comment.create(content:"What a terrible song!", song_id: s7.id)
# c24 = Comment.create(content:"Not his best, but still good!", song_id: s7.id)
# c25 = Comment.create(content:"This song is alright", song_id: s7.id)
# c26 = Comment.create(content:"not bad", song_id: s7.id)
# c27 = Comment.create(content:"I've heard better", song_id: s8.id)
# c28 = Comment.create(content:"a good verios of this song", song_id: s8.id)
# c29 = Comment.create(content:"good cover", song_id: s9.id)
# c30 = Comment.create(content:"A great song. One of his best!", song_id: s9.id)
# c31 = Comment.create(content:"A great song. One of his best!", song_id: s10.id)
# c32 = Comment.create(content:"A wonderful song. I love this one!", song_id: s10.id)
# c33 = Comment.create(content:"What a terrible song!", song_id: s10.id)
# c34 = Comment.create(content:"Not his best, but still good!", song_id: s11.id)
# c35 = Comment.create(content:"This song is alright", song_id: s11.id)
# c36 = Comment.create(content:"not bad", song_id: s12.id)
# c37 = Comment.create(content:"I've heard better", song_id: s13.id)
# c38 = Comment.create(content:"a good verios of this song", song_id: s13.id)
# c39 = Comment.create(content:"good cover", song_id: s13.id)
# c40 = Comment.create(content:"A great song. One of his best!", song_id: s14.id)
# c41 = Comment.create(content:"A great song. One of his best!", song_id: s14.id)
# c42 = Comment.create(content:"A wonderful song. I love this one!", song_id: s14.id)
# c43 = Comment.create(content:"What a terrible song!", song_id: s12.id)
# c44 = Comment.create(content:"Not his best, but still good!", song_id: s12.id)
# c45 = Comment.create(content:"This song is alright", song_id: s11.id)

puts 'success'
