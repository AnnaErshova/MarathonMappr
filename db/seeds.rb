# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Marathon.create(name: 'Tartu City Marathon', month: 10, year: 2015, day: 3, date_description: 'October 2015', city: 'Tartu', country: 'Estonia', kind: 'M/H/R', latitude: 58.377625, longitude: 26.729006, event_date: '3 Oct 2015')
Marathon.create(name: '1/2 Maraton Scotiabank', month: 10, year: 2015, day: 4, date_description: 'October 2015', city: 'Santiago', country: 'Peru', kind: 'H', latitude: -14.176111, longitude: -75.716796, event_date: '4 Oct 2015')

