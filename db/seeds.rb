# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def time_point_string; Time.now.strftime('%H:%M:%S:%L') end

puts "+++ #{time_point_string}: Start seeding +++ "

puts "#{time_point_string}: Create Teams"
teams = Team.create!([
                       { name: 'Dream Team' },
                       { name: 'Team 2' }
                     ]);

puts "#{time_point_string}: Teams created"

puts "#{time_point_string}: Create Players"
players_list = Player.create!([
                  { first_name: 'Анатолий',  second_name: 'Иванов',    team: teams[1] },
                  { first_name: 'Иван',      second_name: 'Петров',    team: teams[0] },
                  { first_name: 'Андрей',    second_name: 'Сидоров',   team: teams[1] },
                  { first_name: 'Сергей',    second_name: 'Павлюк',    team: teams[0] },
                  { first_name: 'Василий',   second_name: 'Сердюков',  team: teams[1] },
                  { first_name: 'Василиса',  second_name: 'Иванова',   team: teams[0] },
                  { first_name: 'Светлана',  second_name: 'Быкова',    team: teams[1] },
                  { first_name: 'Екатерина', second_name: 'Светлова',  team: teams[0] },
                  { first_name: 'Варвара',   second_name: 'Чубайс',    team: teams[1] },
                  { first_name: 'Мария',     second_name: 'Мишустина', team: teams[0] }
                ]);

puts "#{time_point_string}: Players created"

puts "#{time_point_string}: Create Matches"
matches = Match.create!([
                  { name: 'Round 1! Fight!' },
                  { name: 'Round 2' },
                  { name: 'Final Round' }
                ]);

puts "#{time_point_string}: Matches created"

puts "#{time_point_string}: Create Results"
matches = Result.create!([
                  { intro: 'пробежал 10+ км',             player:  players_list[0], match: matches[0]  },
                  { intro: 'сделал 70+ % точных передач', player:  players_list[1], match: matches[1]  },
                  { intro: 'жим лежа 120',                player:  players_list[2], match: matches[2]  },
                  { intro: 'пробежал 10+ км',             player:  players_list[3], match: matches[0]  },
                  { intro: 'сделал 70+ % точных передач', player:  players_list[4], match: matches[1]  },
                  { intro: 'жим лежа 120',                player:  players_list[5], match: matches[2]  },
                  { intro: 'пробежал 10+ км',             player:  players_list[6], match: matches[0]  },
                  { intro: 'сделал 70+ % точных передач', player:  players_list[7], match: matches[1]  },
                  { intro: 'жим лежа 120',                player:  players_list[8], match: matches[2]  },
                  { intro: 'пробежал 10+ км',             player:  players_list[0], match: matches[0]  },
                  { intro: 'сделал 70+ % точных передач', player:  players_list[7], match: matches[1]  },
                  { intro: 'жим лежа 120',                player:  players_list[2], match: matches[0]  },
                  { intro: 'пробежал 10+ км',             player:  players_list[9], match: matches[0]  },
                  { intro: 'сделал 70+ % точных передач', player:  players_list[3], match: matches[1]  },
                  { intro: 'жим лежа 120',                player:  players_list[5], match: matches[0]  }
                ]);

puts "#{time_point_string}: Results created"


puts "+++ #{time_point_string}: Stop seeding +++ "