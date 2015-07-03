# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Supperplace.create(name: 'Yeo Keng Nam Chicken Rice', address: '8 Braddell Rd, Singapore 359898', website: 'www.ykn.com.sg', crusine: 'Chinese', phone: '62854153', state: 'open', latitude: '1.343366', longitude: '103.870326')
  Photo.create(name: 'Signature Steamed Chicken', url: 'http://x3.sdimgs.com/sd_static/a/182727/Signature%20Steam%20Chicken.jpg', supperplace_id: '1')
  OpeningHour.create(day: 'everyday', opening_time: '10:30', closing_time: '22:00', supperplace_id: '1')

Supperplace.create(name: 'Ponggol Nasi Lemak', address: '371 Jalan Besar #01-01, Singapore 208998', website: 'www.ponggolnasilemak.com.sg', crusine: 'Chinese', phone: '62930020', state: 'open', latitude: '1.312830', longitude: '103.859607')

Supperplace.create(name: 'Ponggol Nasi Lemak Centre', address: '965 Upper Serangoon Road, Singapore 534721', website: 'www.ponggolnasilemak.com.sg', crusine: 'Chinese', phone: '62810020', state: 'open', latitude: '1.361873', longitude: '103.886616')

Supperplace.create(name: 'Suriya Curry House', address: '536 Upper Serangoon Rd, Singapore 534551', crusine: 'Indian', phone: '62856442', state: 'open', latitude: '1.345982', longitude: '103.871553')
