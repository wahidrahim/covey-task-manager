# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.new(name: 'not urgent and not important',
				 urgency: 32,
				 importance: 48).save;

Task.new(name: 'urgent but not important',
				 urgency: 52,
				 importance: 23).save;

Task.new(name: 'not urgent but important',
				 urgency: 24,
				 importance: 64).save;

Task.new(name: 'urgent and important',
				 urgency: 84,
				 importance: 72).save;
