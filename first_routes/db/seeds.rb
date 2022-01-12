# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    user1 = User.create!(username:"sean")
    user2 = User.create!(username:"aagam")
    user3 = User.create!(username:"maddie")
    artwork1 = Artwork.create!(title: "Sunrise", image_url: "www.sample.com", artist_id: user1.id)
    artwork2 = Artwork.create!(title: "Sunset", image_url: "www.sample2.com", artist_id: user2.id)
    artwork3 = Artwork.create!(title: "Moonlight", image_url: "www.sample3.com", artist_id: user3.id)
    artwork_share1 = ArtworkShare.create!(viewer_id: user2.id, artwork_id: artwork1.id)
    artwork_share2 = ArtworkShare.create!(viewer_id: user1.id, artwork_id: artwork3.id)
    artwork_share3 = ArtworkShare.create!(viewer_id: user1.id, artwork_id: artwork1.id)
