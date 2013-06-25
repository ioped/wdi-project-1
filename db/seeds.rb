# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Game.destroy_all
Genre.destroy_all
GameReview.destroy_all
GameRating.destroy_all

u1  =  User.create first_name: "Kim"    , last_name: "Szelong"  , email: "kimszelong@gmail.com"   , sex: "female" , date_of_birth: "20/07/1988", password: "123", password_confirmation: "123", display_name: "kimsze"         , description: "I'm a kitteh!", avatar_url: "http://placekitten.com/500/500"
u2  =  User.create first_name: "Pedro"  , last_name: "Maltez"   , email: "maltezpedro@gmail.com"  , sex: "male"   , date_of_birth: "01/01/1993", password: "234", password_confirmation: "234", display_name: "maltezpedro"    , description: "I'm a kitteh!", avatar_url: "http://placekitten.com/500/500" , steamid: "themooingcat" , steam64id: "76561198054201790"
u3  =  User.create first_name: "Rob"    , last_name: "Anderson" , email: "robanderson@gmail.com"  , sex: "male"   , date_of_birth: "12/06/1985", password: "345", password_confirmation: "345", display_name: "robanderson"    , description: "I'm a kitteh!", avatar_url: "http://placekitten.com/500/500"
u4  =  User.create first_name: "Toby"   , last_name: "Sims"     , email: "tobysims@gmail.com"     , sex: "male"   , date_of_birth: "23/10/1986", password: "456", password_confirmation: "456", display_name: "4thfloormonkey" , description: "I'm a kitteh!", avatar_url: "http://placekitten.com/500/500"
u5  =  User.create first_name: "George" , last_name: "Gray"     , email: "georgegray@gmail.com"   , sex: "male"   , date_of_birth: "07/12/1981", password: "567", password_confirmation: "567", display_name: "ggray"          , description: "I'm a kitteh!", avatar_url: "http://placekitten.com/500/500"
u6  =  User.create first_name: "James"  , last_name: "Willock"  , email: "jameswillock@gmail.com" , sex: "male"   , date_of_birth: "17/04/1990", password: "678", password_confirmation: "678", display_name: "jillock"        , description: "I'm a kitteh!", avatar_url: "http://placekitten.com/500/500"
u7  =  User.create first_name: "Juan"   , last_name: "Pardini"  , email: "jfpardini@gmail.com"    , sex: "male"   , date_of_birth: "10/05/1988", password: "789", password_confirmation: "789", display_name: "jpardi"         , description: "I'm a kitteh!", avatar_url: "http://placekitten.com/500/500"
u8  =  User.create first_name: "Sam"    , last_name: "Leach"    , email: "sameleach@gmail.com"    , sex: "male"   , date_of_birth: "21/02/1979", password: "321", password_confirmation: "321", display_name: "bigdata"        , description: "I'm a kitteh!", avatar_url: "http://placekitten.com/500/500"
u9  =  User.create first_name: "Charles", last_name: "Munat"    , email: "charlesmunat@gmail.com" , sex: "male"   , date_of_birth: "25/12/1959", password: "432", password_confirmation: "432", display_name: "santa"          , description: "I'm a kitteh!", avatar_url: "http://placekitten.com/500/500"
u10 =  User.create first_name: "Soner"  , last_name: "Ozenc"    , email: "sonerozenc@gmail.com"   , sex: "male"   , date_of_birth: "04/02/1981", password: "543", password_confirmation: "543", display_name: "visualguy"      , description: "I'm a kitteh!", avatar_url: "http://placekitten.com/500/500"

g1  = Game.create name: "Age of Empires"        , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g2  = Game.create name: "Meh, sheep"            , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g3  = Game.create name: "World of Warcraft"     , description: "Not so great."              , poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g4  = Game.create name: "Diablo"                , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g5  = Game.create name: "Diablo 2"              , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g6  = Game.create name: "Diablo 3"              , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g7  = Game.create name: "Starcraft"             , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g8  = Game.create name: "Prince of Persia"      , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g9  = Game.create name: "Borderlands"           , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g10 = Game.create name: "Borderlands 2"         , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g11 = Game.create name: "Super Meat Boy"        , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g12 = Game.create name: "Portal"                , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g13 = Game.create name: "Team Fortress 2"       , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g14 = Game.create name: "Guild Wars"            , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g15 = Game.create name: "Guild Wars 2"          , description: "Awesomest MMO."             , poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g16 = Game.create name: "Civilization V"        , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"  , steam_game_id: "8930"
g17 = Game.create name: "Minecraft"             , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g18 = Game.create name: "Revenge of the Titans" , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g19 = Game.create name: "Bastion"               , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g20 = Game.create name: "HOARD"                 , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g21 = Game.create name: "Shank"                 , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g22 = Game.create name: "Shank 2"               , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g23 = Game.create name: "Multiwinia"            , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g24 = Game.create name: "Rochard"               , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g25 = Game.create name: "Sanctum"               , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g26 = Game.create name: "Braid"                 , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g27 = Game.create name: "Magicka"               , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g28 = Game.create name: "Sideway"               , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g29 = Game.create name: "Prototype"             , description: "The greatest game on earth.", poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"
g30 = Game.create name: "League of Legends"     , description: "DotA like thing."           , poster: "http://placekitten.com/400/500", background: "http://placekitten.com/1200/800"

u1.games  << [ g2  , g4  , g6                                                          ]
u2.games  << [ g1  , g5  , g10  , g15  , g16  , g17  , g20  , g22  , g25  , g28  , g29 ]
u3.games  << [ g2  , g4  , g6   , g10  , g11  , g13  , g14  , g30                      ]
u4.games  << [ g2  , g4  , g6   , g21                                                  ]
u5.games  << [ g1  , g3  , g6   , g18  , g19  , g26                                    ]
u6.games  << [ g2  , g4  , g6   , g10  , g15  , g27  , g29                             ]
u7.games  << [ g2  , g4  , g6   , g7   , g8   , g9   , g10                             ]
u8.games  << [ g2  , g3  , g4   , g5   , g6   , g7   , g9   , g13  , g19  , g21        ]
u9.games  << [ g2  , g4  , g6   , g10  , g15  , g20  , g25                             ]
u10.games << [ g2  , g4  , g6   , g10  , g16  , g20  , g23                             ]

gen1  = Genre.create name: "Platformer"
gen2  = Genre.create name: "Action"
gen3  = Genre.create name: "Puzzle"
gen4  = Genre.create name: "First Person Shooter"
gen5  = Genre.create name: "Real-time Strategy"
gen6  = Genre.create name: "Role-playing"
gen7  = Genre.create name: "Racing"
gen8  = Genre.create name: "Simulation"
gen9  = Genre.create name: "Adventure"
gen10 = Genre.create name: "4X"

g1.genres   << [ gen5  , gen8                  ]
g2.genres   << [ gen1                          ]
g3.genres   << [ gen3  , gen10                 ]
g4.genres   << [ gen4  , gen9                  ]
g5.genres   << [ gen7  , gen8                  ]
g6.genres   << [ gen1                          ]
g7.genres   << [ gen3                          ]
g8.genres   << [ gen4                          ]
g9.genres   << [ gen2                          ]
g10.genres  << [ gen4  , gen6                  ]
g11.genres  << [ gen8                          ]
g12.genres  << [ gen1  , gen4  , gen7  , gen10 ]
g13.genres  << [ gen1  , gen2  , gen4          ]
g14.genres  << [ gen1  , gen5  , gen9          ]
g15.genres  << [ gen3  , gen10                 ]
g16.genres  << [ gen2  , gen5                  ]
g17.genres  << [ gen7  , gen8                  ]
g18.genres  << [ gen3  , gen7  , gen9          ]
g19.genres  << [ gen1  , gen8                  ]
g20.genres  << [ gen4  , gen5                  ]
g21.genres  << [ gen3  , gen8                  ]
g22.genres  << [ gen2  , gen4                  ]
g23.genres  << [ gen5  , gen10                 ]
g24.genres  << [ gen6  , gen9                  ]
g25.genres  << [ gen4  , gen6                  ]
g26.genres  << [ gen1  , gen4                  ]
g27.genres  << [ gen7  , gen10                 ]
g28.genres  << [ gen2  , gen4                  ]
g29.genres  << [ gen4  , gen6                  ]
g30.genres  << [ gen1  , gen9                  ]

grev1   = GameReview.create user: u1   , game: g1  , title: "This is awesome!"                                   , body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev2   = GameReview.create user: u2   , game: g1  , title: "Lipsum Lipsum!"                                     , body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev3   = GameReview.create user: u3   , game: g2  , title: "bla blah"                                           , body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev4   = GameReview.create user: u4   , game: g1  , title: "Meh"                                                , body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev5   = GameReview.create user: u5   , game: g2  , title: "Nomnomnom"                                          , body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev6   = GameReview.create user: u6   , game: g3  , title: "Yadda yadda yadda"                                  , body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev7   = GameReview.create user: u7   , game: g4  , title: "What to say?"                                       , body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev8   = GameReview.create user: u8   , game: g5  , title: "Nahnahanahanha"                                     , body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev9   = GameReview.create user: u9   , game: g4  , title: "Na Na Na Na Na Na Na Na BATMAN!!!"                  , body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev10  = GameReview.create user: u10  , game: g3  , title: "Spiderman, Spiderman, does whatever a spider can."  , body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."
grev11  = GameReview.create user: u2   , game: g5  , title: "Fighting CRIME!"                                    , body: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics,a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth."

grat1   = GameRating.create user: u1   , rating: 6   , game: g1 , game_review: grev1   
grat2   = GameRating.create user: u2   , rating: 10  , game: g1 , game_review: grev2   
grat3   = GameRating.create user: u3   , rating: 9   , game: g2 , game_review: grev3   
grat4   = GameRating.create user: u4   , rating: 5   , game: g1 , game_review: grev4   
grat5   = GameRating.create user: u5   , rating: 1   , game: g2 , game_review: grev5   
grat6   = GameRating.create user: u6   , rating: 2   , game: g3 , game_review: grev6   
grat7   = GameRating.create user: u7   , rating: 9   , game: g4 , game_review: grev7   
grat8   = GameRating.create user: u8   , rating: 4   , game: g5 , game_review: grev8   
grat9   = GameRating.create user: u9   , rating: 3   , game: g4 , game_review: grev9   
grat10  = GameRating.create user: u1   , rating: 2   , game: g3 , game_review: grev10  
grat11  = GameRating.create user: u10  , rating: 1   , game: g5 , game_review: grev11  
grat12  = GameRating.create user: u2   , rating: 8   , game: g1
grat13  = GameRating.create user: u3   , rating: 7   , game: g2
grat14  = GameRating.create user: u4   , rating: 6   , game: g3
grat15  = GameRating.create user: u5   , rating: 9   , game: g4
grat16  = GameRating.create user: u6   , rating: 4   , game: g5
grat17  = GameRating.create user: u7   , rating: 9   , game: g6
grat18  = GameRating.create user: u8   , rating: 4   , game: g7
grat19  = GameRating.create user: u9   , rating: 3   , game: g8
grat20  = GameRating.create user: u10  , rating: 9   , game: g9
grat21  = GameRating.create user: u7   , rating: 10  , game: g2
grat22  = GameRating.create user: u2   , rating: 9   , game: g3
grat23  = GameRating.create user: u5   , rating: 9   , game: g4
grat24  = GameRating.create user: u6   , rating: 4   , game: g5
grat25  = GameRating.create user: u1   , rating: 7   , game: g6
grat26  = GameRating.create user: u5   , rating: 9   , game: g7
grat27  = GameRating.create user: u6   , rating: 4   , game: g8
grat28  = GameRating.create user: u7   , rating: 9   , game: g9
grat29  = GameRating.create user: u8   , rating: 9   , game: g10
grat30  = GameRating.create user: u1   , rating: 9   , game: g11
grat31  = GameRating.create user: u3   , rating: 9   , game: g2
grat32  = GameRating.create user: u1   , rating: 4   , game: g12
grat33  = GameRating.create user: u2   , rating: 5   , game: g13
grat34  = GameRating.create user: u3   , rating: 9   , game: g14
grat35  = GameRating.create user: u3   , rating: 4   , game: g15
grat36  = GameRating.create user: u1   , rating: 9   , game: g16
grat37  = GameRating.create user: u4   , rating: 5   , game: g17
grat38  = GameRating.create user: u6   , rating: 10  , game: g18
grat39  = GameRating.create user: u1   , rating: 6   , game: g18
grat40  = GameRating.create user: u7   , rating: 9   , game: g19
grat41  = GameRating.create user: u8   , rating: 2   , game: g20
grat42  = GameRating.create user: u3   , rating: 5   , game: g21
grat43  = GameRating.create user: u6   , rating: 3   , game: g23
grat44  = GameRating.create user: u1   , rating: 9   , game: g22
grat45  = GameRating.create user: u2   , rating: 3   , game: g24
grat46  = GameRating.create user: u2   , rating: 8   , game: g25
grat47  = GameRating.create user: u1   , rating: 9   , game: g26
grat48  = GameRating.create user: u10  , rating: 8   , game: g27
grat49  = GameRating.create user: u1   , rating: 9   , game: g28
grat50  = GameRating.create user: u1   , rating: 2   , game: g29
grat51  = GameRating.create user: u2   , rating: 8   , game: g30
grat52  = GameRating.create user: u1   , rating: 9   , game: g21
grat53  = GameRating.create user: u3   , rating: 7   , game: g1
grat54  = GameRating.create user: u4   , rating: 6   , game: g3
grat55  = GameRating.create user: u5   , rating: 2   , game: g3
grat56  = GameRating.create user: u6   , rating: 9   , game: g23
grat57  = GameRating.create user: u9   , rating: 7   , game: g15
grat58  = GameRating.create user: u1   , rating: 9   , game: g11
grat59  = GameRating.create user: u1   , rating: 9   , game: g12
grat60  = GameRating.create user: u4   , rating: 6   , game: g15
grat61  = GameRating.create user: u3   , rating: 1   , game: g17
grat62  = GameRating.create user: u2   , rating: 9   , game: g18
grat63  = GameRating.create user: u4   , rating: 7   , game: g19
grat64  = GameRating.create user: u2   , rating: 9   , game: g20
grat65  = GameRating.create user: u6   , rating: 9   , game: g10
grat66  = GameRating.create user: u7   , rating: 7   , game: g7
grat67  = GameRating.create user: u7   , rating: 9   , game: g4
grat68  = GameRating.create user: u4   , rating: 7   , game: g16
grat69  = GameRating.create user: u2   , rating: 4   , game: g26
grat70  = GameRating.create user: u8   , rating: 5   , game: g27
grat71  = GameRating.create user: u9   , rating: 6   , game: g1
grat72  = GameRating.create user: u9   , rating: 7   , game: g30
grat73  = GameRating.create user: u5   , rating: 9   , game: g29
grat74  = GameRating.create user: u2   , rating: 9   , game: g22
grat75  = GameRating.create user: u1   , rating: 7   , game: g21
grat76  = GameRating.create user: u2   , rating: 8   , game: g25
grat77  = GameRating.create user: u4   , rating: 3   , game: g26
grat78  = GameRating.create user: u6   , rating: 2   , game: g30
grat79  = GameRating.create user: u7   , rating: 9   , game: g10
grat80  = GameRating.create user: u8   , rating: 9   , game: g1
grat81  = GameRating.create user: u4   , rating: 7   , game: g2
grat82  = GameRating.create user: u10  , rating: 9   , game: g7
grat83  = GameRating.create user: u2   , rating: 7   , game: g9
grat84  = GameRating.create user: u7   , rating: 3   , game: g16
grat85  = GameRating.create user: u5   , rating: 2   , game: g25
grat86  = GameRating.create user: u1   , rating: 7   , game: g22
grat87  = GameRating.create user: u9   , rating: 9   , game: g15
grat88  = GameRating.create user: u10  , rating: 10  , game: g12
grat89  = GameRating.create user: u7   , rating: 9   , game: g1
grat90  = GameRating.create user: u2   , rating: 8   , game: g16
grat91  = GameRating.create user: u5   , rating: 4   , game: g25
grat92  = GameRating.create user: u2   , rating: 5   , game: g23
grat93  = GameRating.create user: u6   , rating: 2   , game: g1
grat94  = GameRating.create user: u7   , rating: 10  , game: g24
grat95  = GameRating.create user: u8   , rating: 8   , game: g25
grat96  = GameRating.create user: u9   , rating: 5   , game: g30
grat97  = GameRating.create user: u4   , rating: 2   , game: g23
grat98  = GameRating.create user: u2   , rating: 9   , game: g12
grat99  = GameRating.create user: u1   , rating: 6   , game: g15
grat100 = GameRating.create user: u5   , rating: 2   , game: g18
