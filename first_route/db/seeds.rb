# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Table name: artwork_shares
#
#  id         :bigint(8)        not null, primary key
#  artwork_id :integer          not null
#  viewer_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

u7 = User.create!(username: 'Edward')
u8 = User.create!(username: 'Darren')
u9 = User.create!(username: 'Simcha')
u10 = User.create!(username: 'Matthias')

a1 = Artwork.create!(title: 'Obama Lisa', image_url: "https://goo.gl/images/GkkLej", artist_id: 7)
a2 = Artwork.create!(title: 'Persistence of Memory', image_url: "https://goo.gl/images/2ttsG8", artist_id: 8)
a3 = Artwork.create!(title: 'Starry Night', image_url: "https://goo.gl/images/Up5X6z", artist_id: 9)

as1 = ArtworkShare.create!(artwork_id: 1, viewer_id: 10)
as2 = ArtworkShare.create!(artwork_id: 2, viewer_id: 7)
as3 = ArtworkShare.create!(artwork_id: 3, viewer_id: 9)
as4 = ArtworkShare.create!(artwork_id: 3, viewer_id: 10)
