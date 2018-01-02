# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

usernames = ['Bruce', 'Ahmad', 'Alex']

usernames.each do |username|
  User.create(username: username)
end

['mona lisa', 'picasso', 'the scream'].each do |art_name|
  Artwork.create(title: art_name, artist_id: 4, image_url:
  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/1200px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg')
end

ArtworkShare.create(artwork_id: 1, viewer_id: 3)
ArtworkShare.create(artwork_id: 1, viewer_id: 5)
ArtworkShare.create(artwork_id: 2, viewer_id: 4)
