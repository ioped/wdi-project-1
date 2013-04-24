# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Profile.destroy_all
Game.destroy_all
Library.destroy_all
Genre.destroy_all
GameReview.destroy_all
GameRating.destroy_all

u1 = User.create first_name: "Kim", last_name: "Szelong", email: "kimszelong@gmail.com", sex: "female", date_of_birth: "20/07/1988"
u2 = User.create first_name: "Pedro", last_name: "Maltez", email: "maltezpedro@gmail.com", sex: "male", date_of_birth: "01/01/1993"
u3 = User.create first_name: "Rob", last_name: "Anderson", email: "robanderson@gmail.com", sex: "male", date_of_birth: "12/06/1985"
u4 = User.create first_name: "Toby", last_name: "Sims", email: "tobysims@gmail.com", sex: "male", date_of_birth: "23/10/1986"
u5 = User.create first_name: "George", last_name: "Gray", email: "georgegray@gmail.com", sex: "male", date_of_birth: "07/12/1981"
u6 = User.create first_name: "James", last_name: "Willock", email: "jameswillock@gmail.com", sex: "male", date_of_birth: "17/04/1990"
u7 = User.create first_name: "Juan", last_name: "Pardini", email: "jfpardini@gmail.com", sex: "male", date_of_birth: "10/05/1988"
u8 = User.create first_name: "Sam", last_name: "Leach", email: "sameleach@gmail.com", sex: "male", date_of_birth: "21/02/1979"
u9 = User.create first_name: "Charles", last_name: "Munat", email: "charlesmunat@gmail.com", sex: "male", date_of_birth: "25/12/1959"
u10 = User.create first_name: "Soner", last_name: "Ozenc", email: "sonerozenc@gmail.com", sex: "male", date_of_birth: "40/02/1981"

p1 = Profile.create display_name: "kimsze", description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
p2 = Profile.create display_name: "maltezpedro", description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
p3 = Profile.create display_name: "robanderson", description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
p4 = Profile.create display_name: "4thfloormonkey", description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
p5 = Profile.create display_name: "ggray", description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
p6 = Profile.create display_name: "jillock", description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
p7 = Profile.create display_name: "jpardi", description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
p8 = Profile.create display_name: "bigdata", description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
p9 = Profile.create display_name: "santa", description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
p10 = Profile.create display_name: "visualguy", description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
# p11 = Profile.create description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
# p12 = Profile.create description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
# p13 = Profile.create description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
# p14 = Profile.create description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
# p15 = Profile.create description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
# p16 = Profile.create description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
# p17 = Profile.create description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"
# p18 = Profile.create description: "I'm a kitteh!", avatar: "http://placekitten.com/500/500"

u1.profile = p1
u2.profile = p2
u3.profile = p3
u4.profile = p4
u5.profile = p5
u6.profile = p6
u7.profile = p7
u8.profile = p8
u9.profile = p9
u10.profile = p10

g1 = Game.create name: "Age of Empires", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g2 = Game.create name: "Meh, sheep", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g3 = Game.create name: "World of Warcraft", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g4 = Game.create name: "Diablo", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g5 = Game.create name: "Diablo 2", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g6 = Game.create name: "Diablo 3", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g7 = Game.create name: "Starcraft", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g8 = Game.create name: "Prince of Persia", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g9 = Game.create name: "Borderlands", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g10 = Game.create name: "Borderlands 2", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g11 = Game.create name: "Super Meat Boy", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g12 = Game.create name: "Portal", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g13 = Game.create name: "Team Fortress 2", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g14 = Game.create name: "Guild Wars", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g15 = Game.create name: "Guild Wars 2", description: "Awesomest MMO.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g16 = Game.create name: "Civilization V", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g17 = Game.create name: "Minecraft", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g18 = Game.create name: "Revenge of the Titans", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g19 = Game.create name: "Bastion", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g20 = Game.create name: "HOARD", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g21 = Game.create name: "Shank", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g22 = Game.create name: "Shank 2", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g23 = Game.create name: "Multiwinia", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g24 = Game.create name: "Rochard", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g25 = Game.create name: "Sanctum", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g26 = Game.create name: "Braid", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g27 = Game.create name: "Magicka", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g28 = Game.create name: "Sideway", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g29 = Game.create name: "Prototype", description: "The greatest game on earth.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"
g30 = Game.create name: "League of Legends", description: "Dota like thing.", poster: "http://placesheen.com/400/500", background: "http://placehold.it/1200x800"

l1 = Library.create user: u1, games: [g2, g4, g6]
l2 = Library.create user: u2, games: [g1, g5, g10, g15, g16, g17, g20, g22, g25, g28, g29]
l3 = Library.create user: u3, games: [g2, g4, g6, g10, g11, g13, g14, g30]
l4 = Library.create user: u4, games: [g2, g4, g6, g21]
l5 = Library.create user: u5, games: [g1, g3, g6, g18, g19, g26]
l6 = Library.create user: u6, games: [g2, g4, g6, g10, g15, g27, g29]
l7 = Library.create user: u7, games: [g2, g4, g6, g7, g8, g9, g10]
l8 = Library.create user: u8, games: [g2, g3, g4, g5, g6, g7, g9, g13, g19, g21]
l9 = Library.create user: u9, games: [g2, g4, g6, g10, g15, g20, g25]
l10 = Library.create user: u10, games: [g2, g4, g6, g10, g16, g20, g23]

u1.library = l1
u2.library = l2
u3.library = l3
u4.library = l4
u5.library = l5
u6.library = l6
u7.library = l7
u8.library = l8
u9.library = l9
u10.library = l10

gen1 = Genre.create name: "Platformer"
gen2 = Genre.create name: "Action"
gen3 = Genre.create name: "Puzzle"
gen4 = Genre.create name: "First Person Shooter"
gen5 = Genre.create name: "Real-time Strategy"
gen6 = Genre.create name: "Role-playing"
gen7 = Genre.create name: "Racing"
gen8 = Genre.create name: "Simulation"
gen9 = Genre.create name: "Adventure"
gen10 = Genre.create name: "4X"

g1.genres << [gen5, gen8]
g2.genres << [gen1]
g3.genres << [gen3, gen10]
g4.genres << [gen4, gen9]
g5.genres << [gen7, gen8]
g6.genres << [gen1]
g7.genres << [gen3]
g8.genres << [gen4]
g9.genres << [gen2]
g10.genres << [gen4, gen6]
g11.genres << [gen8]
g12.genres << [gen1, gen4, gen7, gen10]
g13.genres << [gen1, gen2, gen4]
g14.genres << [gen1, gen5, gen9]
g15.genres << [gen3, gen10]
g16.genres << [gen2, gen5]
g17.genres << [gen7, gen8]
g18.genres << [gen3, gen7, gen9]
g19.genres << [gen1, gen8]
g20.genres << [gen4, gen5]
g21.genres << [gen3, gen8]
g22.genres << [gen2, gen4]
g23.genres << [gen5, gen10]
g24.genres << [gen6, gen9]
g25.genres << [gen4, gen6]
g26.genres << [gen1, gen4]
g27.genres << [gen7, gen10]
g28.genres << [gen2, gen4]
g29.genres << [gen4, gen6]
g30.genres << [gen1, gen9]

grev1 = GameReview.create title: "This is awesome!", body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev2 = GameReview.create title: "Lipsum Lipsum!", body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev3 = GameReview.create title: "bla blah", body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev4 = GameReview.create title: "Meh", body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev5 = GameReview.create title: "Nomnomnom", body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev6 = GameReview.create title: "Yadda yadda yadda", body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev7 = GameReview.create title: "What to say?", body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev8 = GameReview.create title: "Nahnahanahanha", body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev9 = GameReview.create title: "Na Na Na Na Na Na Na Na BATMAN!!!", body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev10 = GameReview.create title: "Spiderman, Spiderman, does whatever a spider can.", body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev11 = GameReview.create title: "Fighting CRIME!", body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
# grev12 = GameReview.create
# grev13 = GameReview.create
# grev14 = GameReview.create
# grev15 = GameReview.create
# grev16 = GameReview.create
# grev17 = GameReview.create
# grev18 = GameReview.create
# grev19 = GameReview.create
# grev20 = GameReview.create
# grev21 = GameReview.create
# grev22 = GameReview.create
# grev23 = GameReview.create
# grev24 = GameReview.create
# grev25 = GameReview.create
# grev26 = GameReview.create
# grev27 = GameReview.create
# grev28 = GameReview.create
# grev29 = GameReview.create
# grev30 = GameReview.create

g1.game_reviews << [grev1, grev2, grev4]
g2.game_reviews << [grev3, grev5]
g3.game_reviews << [grev6, grev10]
g4.game_reviews << [grev7, grev9]
g5.game_reviews << [grev8, grev11]

grev1.user = u1
grev2.user = u2
grev3.user = u4
grev4.user = u5
grev5.user = u7
grev6.user = u4
grev7.user = u10
grev8.user = u4
grev9.user = u6
grev10.user = u6
grev11.user = u6

grat1 = GameRating.create rating: 6
grat2 = GameRating.create rating: 10
grat3 = GameRating.create rating: 9
grat4 = GameRating.create rating: 5
grat5 = GameRating.create rating: 1
grat6 = GameRating.create rating: 2
grat7 = GameRating.create rating: 9
grat8 = GameRating.create rating: 4
grat9 = GameRating.create rating: 3
grat10 = GameRating.create rating: 2
grat11 = GameRating.create rating: 1
grat12 = GameRating.create rating: 8
grat13 = GameRating.create rating: 7
grat14 = GameRating.create rating: 6
grat15 = GameRating.create rating: 9
grat16 = GameRating.create rating: 4
grat17 = GameRating.create rating: 9
grat18 = GameRating.create rating: 4
grat19 = GameRating.create rating: 3
grat20 = GameRating.create rating: 9
grat21 = GameRating.create rating: 10
grat22 = GameRating.create rating: 9
grat23 = GameRating.create rating: 9
grat24 = GameRating.create rating: 4
grat25 = GameRating.create rating: 7
grat26 = GameRating.create rating: 9
grat27 = GameRating.create rating: 4
grat28 = GameRating.create rating: 9
grat29 = GameRating.create rating: 9
grat30 = GameRating.create rating: 9
grat31 = GameRating.create rating: 9
grat32 = GameRating.create rating: 4
grat33 = GameRating.create rating: 5
grat34 = GameRating.create rating: 9
grat35 = GameRating.create rating: 4
grat36 = GameRating.create rating: 9
grat37 = GameRating.create rating: 5
grat38 = GameRating.create rating: 10
grat39 = GameRating.create rating: 6
grat40 = GameRating.create rating: 9
grat41 = GameRating.create rating: 2
grat42 = GameRating.create rating: 5
grat43 = GameRating.create rating: 3
grat44 = GameRating.create rating: 9
grat45 = GameRating.create rating: 3
grat46 = GameRating.create rating: 8
grat47 = GameRating.create rating: 9
grat48 = GameRating.create rating: 8
grat49 = GameRating.create rating: 9
grat50 = GameRating.create rating: 2
grat51 = GameRating.create rating: 8
grat52 = GameRating.create rating: 9
grat53 = GameRating.create rating: 7
grat54 = GameRating.create rating: 6
grat55 = GameRating.create rating: 2
grat56 = GameRating.create rating: 9
grat57 = GameRating.create rating: 7
grat58 = GameRating.create rating: 9
grat59 = GameRating.create rating: 9
grat60 = GameRating.create rating: 6
grat61 = GameRating.create rating: 1
grat62 = GameRating.create rating: 9
grat63 = GameRating.create rating: 7
grat64 = GameRating.create rating: 9
grat65 = GameRating.create rating: 9
grat66 = GameRating.create rating: 7
grat67 = GameRating.create rating: 9
grat68 = GameRating.create rating: 7
grat69 = GameRating.create rating: 4
grat70 = GameRating.create rating: 5
grat71 = GameRating.create rating: 6
grat72 = GameRating.create rating: 7
grat73 = GameRating.create rating: 9
grat74 = GameRating.create rating: 9
grat75 = GameRating.create rating: 7
grat76 = GameRating.create rating: 8
grat77 = GameRating.create rating: 3
grat78 = GameRating.create rating: 2
grat79 = GameRating.create rating: 9
grat80 = GameRating.create rating: 9
grat81 = GameRating.create rating: 7
grat82 = GameRating.create rating: 9
grat83 = GameRating.create rating: 7
grat84 = GameRating.create rating: 3
grat85 = GameRating.create rating: 2
grat86 = GameRating.create rating: 7
grat87 = GameRating.create rating: 9
grat88 = GameRating.create rating: 10
grat89 = GameRating.create rating: 9
grat90 = GameRating.create rating: 8
grat91 = GameRating.create rating: 4
grat92 = GameRating.create rating: 5
grat93 = GameRating.create rating: 2
grat94 = GameRating.create rating: 10
grat95 = GameRating.create rating: 8
grat96 = GameRating.create rating: 5
grat97 = GameRating.create rating: 2
grat98 = GameRating.create rating: 9
grat99 = GameRating.create rating: 6
grat100 = GameRating.create rating: 2


