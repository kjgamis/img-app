# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.create(
  title:  'Times Square',
  artist: 'Wojtek Witkowski',
  photo:  'https://picsum.photos/3000/1996?image=274',
  user_id: 1
)

Photo.create(
  title:  'Paris',
  artist: 'Louis Pellissier',
  photo:  'https://picsum.photos/3000/1996?image=318',
  user_id: 1
)

Photo.create(
  title:  'Skyline',
  artist: 'Sarah Holmes',
  photo:  'https://picsum.photos/3000/1996?image=931',
  user_id: 1
)

Photo.create(
  title:  'Continental',
  artist: 'Tim Stief',
  photo:  'https://picsum.photos/3000/1996?image=1071'
)

Photo.create(
  title:  'City Sun',
  artist: 'Kevin Young',
  photo:  'https://picsum.photos/3000/1996?image=1067'
)

Photo.create(
  title:  'Montreal Memories',
  artist: 'Clark Street Mercantile',
  photo:  'https://picsum.photos/3000/1996?image=1059'
)

Photo.create(
  title:  'Cliffs',
  artist: 'Joseph Barrientos',
  photo:  'https://picsum.photos/3000/1996?image=1050'
)

Photo.create(
  title:  'Zurich Airport',
  artist: 'Erex Attias',
  photo:  'https://picsum.photos/3000/1996?image=1033'
)

Photo.create(
  title:  'Stack',
  artist: 'Joanna Kosinska',
  photo:  'https://picsum.photos/3000/1996?image=998'
)

Photo.create(
  title:  'Lighthouse',
  artist: 'Joshua Hibbert',
  photo:  'https://picsum.photos/3000/1996?image=870'
)

Photo.create(
  title:  'Grand Central Station',
  artist: 'Thomas Lefebvre',
  photo:  'https://picsum.photos/3000/1996?image=800'
)

Photo.create(
  title:  'Photo Equipment',
  artist: 'C MA',
  photo:  'https://picsum.photos/3000/1996?image=435'
)

Photo.create(
  title:  'Train',
  artist: 'Matthew Wiebe',
  photo:  'https://picsum.photos/3000/1996?image=694'
)

Photo.create(
  title:  'Brooklyn',
  artist: 'Vita Vilcina',
  photo:  'https://picsum.photos/3000/1996?image=554'
)

Photo.create(
  title:  'Desolate Highway',
  artist: 'Kamil Lehmann',
  photo:  'https://picsum.photos/3000/1996?image=379'
)

Photo.create(
  title:  'Mountain By The Lake',
  artist: 'Nick West',
  photo:  'https://picsum.photos/3000/1996?image=381'
)

Photo.create(
  title:  'Chateau',
  artist: 'Vadim Sherbakov',
  photo:  'https://picsum.photos/3000/1996?image=193'
)

Photo.create(
  title:  'Web Designer\'s Notebook',
  artist: 'Galymzhan Adbugalimov',
  photo:  'https://picsum.photos/3000/1996?image=180'
)

Photo.create(
  title:  'Greece',
  artist: 'Margaret Barley',
  photo:  'https://picsum.photos/3000/1996?image=49'
)

Photo.create(
  title:  'White Pebble Beach',
  artist: 'Pau Jarvis',
  photo:  'https://picsum.photos/3000/1996?image=13'
)

Comment.create(
  name:    'KJG',
  comment: 'fave',
  photo_id: 1
)

Comment.create(
  name:    'KJG',
  comment: 'pretty!',
  photo_id: 2
)

Comment.create(
  name:    'friend',
  comment: 'city vibes',
  photo_id: 3
)


User.create(
  username: 'kjg',
  password: '1234',
  password_confirmation: '1234'
)
